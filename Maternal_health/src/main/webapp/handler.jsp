<%@ page import="java.io.BufferedReader, java.io.IOException, java.io.InputStreamReader, java.io.PrintWriter" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

    <%
        // Get the data from the form
        String age = request.getParameter("age");
        String systolicBP = request.getParameter("systolicBP");
        String diastolicBP = request.getParameter("diastolicBP");
        String bs = request.getParameter("bs");
        String bodyTemp = request.getParameter("bodyTemp");
        String heartRate = request.getParameter("heartRate");

        try {
            // Create a ProcessBuilder to execute the Python script
            ProcessBuilder pb = new ProcessBuilder("python", "F:\\DCS-SEM 5\\J2EE\\Project\\model.py");
            Process process = pb.start();

            // Get the input and output streams of the Python process
            PrintWriter writer = new PrintWriter(process.getOutputStream());
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));

            // Write the data to the Python script
            writer.println(age);
            writer.println(systolicBP);
            writer.println(diastolicBP);
            writer.println(bs);
            writer.println(bodyTemp);
            writer.println(heartRate);
            writer.flush();
            writer.close(); // Close the input stream

            // Read the output of the Python script
            StringBuilder output = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                output.append(line);
            }

            // Wait for the Python script to complete
            process.waitFor();
			System.out.print(output.toString());
            request.setAttribute("riskLevel", output.toString());

            // Redirect to result.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
            dispatcher.forward(request, response);
        } catch (IOException | InterruptedException e) {
            out.println("Error: " + e.getMessage());
        }
    %>

</body>
</html>
