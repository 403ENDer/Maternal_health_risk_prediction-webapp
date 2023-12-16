<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible"
		content="IE=edge">
	<meta name="viewport"
		content="width=device-width, 
				initial-scale=1.0">
	<title>Maternal Health</title>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet"
		href="responsive.css">
</head>

<body>

	<!-- for header part -->
	<header>

		<div class="logosec">
			<div class="logo">Maternal Health</div>
			<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210182541/Untitled-design-(30).png"
				class="icn menuicn"
				id="menuicn"
				alt="menu-icon">
		</div>

		

		<div class="message">
			<div class="circle"></div>
			<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183322/8.png"
				class="icn"
				alt="">
			<div class="dp">
			<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210180014/profile-removebg-preview.png"
					class="dpicn"
					alt="dp">
			</div>
		</div>

	</header>

	<div class="main-container">
		<div class="navcontainer">
			<nav class="nav">
				<div class="nav-upper-options">
					<div class="nav-option option1">
						<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210182148/Untitled-design-(29).png"
							class="nav-img"
							alt="dashboard">
						<h3> Dashboard</h3>
					</div>

					<div class="option2 nav-option">
						<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183322/9.png"
							class="nav-img"
							alt="articles">
						<a href="testimonial.jsp" style="text-decoration: none;color: black;"><h3>Testimonials</h3></a>
					</div>

					<div class="nav-option option3">
						<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183320/5.png"
							class="nav-img"
							alt="report">
						<a href="report.jsp" style="text-decoration: none;color:black"><h3> Report</h3></a>
					</div>

					

				</div>
			</nav>
		</div>
		<div class="main">

			<div class="searchbar2">
				<input type="text"
					name=""
					id=""
					placeholder="Search">
				<div class="searchbtn">
				<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210180758/Untitled-design-(28).png"
						class="icn srchicn"
						alt="search-button">
				</div>
			</div>

			<div class="box-container">

				<div class="box box1">
					<div class="text">
						<h2 class="topic-heading">
						 <%
                                // Get the current session or create a new one if it doesn't exist
                                HttpSession hk_1 = request.getSession(true);

                                // Retrieve the viewCount value from the session
                                Integer viewCount = (Integer) hk_1.getAttribute("viewCount");

                                if (viewCount == null) {
                                    viewCount = 1; // Initialize to 1 for the first visit
                                } else {
                                    viewCount++; // Increment for subsequent visits
                                }

                                // Update the session attribute
                                session.setAttribute("viewCount", viewCount);

                                // Display the viewCount on the page
                                out.print(viewCount);
                            %>
        </h2>
						<h2 class="topic">Website Views</h2>
					</div>

					<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210184645/Untitled-design-(31).png"
						alt="Views">
				</div>

				<div class="box box2">
					<div class="text">
						<h2 class="topic-heading">50</h2>
						<h2 class="topic">Likes</h2>
					</div>

					<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210185030/14.png"
						alt="likes">
				</div>

				<div class="box box3">
					<div class="text">
						<h2 class="topic-heading">0</h2>
						<h2 class="topic">Feedbacks</h2>
					</div>

					<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210184645/Untitled-design-(32).png"
						alt="comments">
				</div>

			</div>

			<div class="report-container">
				<div class="report-header">
					<h1 class="recent-Articles">Recent Testimonials</h1>
				</div>

				<div class="report-body">
					<div class="report-topic-heading">
						<h3 class="t-op">Name</h3>
						<h3 class="t-op">Occupation</h3>
						<h3 class="t-op">Risk Level</h3>
						<h3 class="t-op">Suggestion</h3>
					</div>

					<div class="items">
                <% 
                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rs = null;

                    try {
                        // Establishing a database connection (replace "jdbc:mysql://localhost:3306/your_database" with your database URL)
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String url = "jdbc:mysql://localhost:3306/mydb";
                        String username = "root";
                        String password = "Harihk@1106";
                        conn = DriverManager.getConnection(url, username, password);

                        // Executing a SQL query to retrieve testimonials
                        String query = "SELECT name, occupation, risk_level, suggestion FROM testimonials";
                        stmt = conn.createStatement();
                        rs = stmt.executeQuery(query);

                        // Iterating through the result set and displaying testimonials
                        while (rs.next()) {
                %>
                            <div class="item1">
                                <h3 class="t-op-nextlvl"><%= rs.getString("name") %></h3>
                                <h3 class="t-op-nextlvl"><%= rs.getString("occupation") %></h3>
                                <h3 class="t-op-nextlvl"><%= rs.getString("risk_level") %></h3>
                                <h3 class="t-op-nextlvl label-tag"><%= rs.getString("suggestion") %></h3>
                            </div>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        // Closing database resources
                        try {
                            if (rs != null) rs.close();
                            if (stmt != null) stmt.close();
                            if (conn != null) conn.close();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                %>
            </div>
				</div>
			</div>
		</div>
	</div>

	<script src="./index.js"></script>
	
</body>
</html>
