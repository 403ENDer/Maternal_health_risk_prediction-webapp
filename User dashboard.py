from sklearn.ensemble import RandomForestClassifier
from explainerdashboard import ClassifierExplainer, ExplainerDashboard
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder

df = pd.read_csv("F:\DCS-SEM 5\J2EE\Project\Maternal Health Risk Data Set.csv")

feature_descriptions = {
    'Age': 'The age of the patient in years.',
    'SystolicBP': 'Systolic blood pressure represents the highest level of pressure in the arteries during each heartbeat (mm Hg).',
    'DiastolicBP': 'Diastolic blood pressure represents the lowest level of pressure in the arteries between heartbeats (mm Hg).',
    'BS': 'Blood Sugar (BS) level is a measure of the patient\'s blood glucose concentration, typically in units like mg/dL or mmol/L.',
    'BodyTemp': 'Body temperature represents the temperature of the patient\'s body, typically measured in degrees Celsius (°C) or Fahrenheit (°F).',
    'HeartRate': 'Heart rate is the number of times the patient\'s heart beats in one minute (bpm).',
    'RiskLevel': 'Risk Level is a categorical variable that indicates the level of health risk for the patient (e.g., "high risk," "mid risk," "low risk").'
}



scaler = LabelEncoder()
df_label = df.copy()
df['RiskLevel'] = scaler.fit_transform(df_label['RiskLevel'])
X_train , X_test , y_train , y_test = train_test_split(df.drop('RiskLevel' , axis = 1) , df['RiskLevel'] , test_size=0.3, random_state=42)

model = RandomForestClassifier(random_state = 42)
model.fit(X_train , y_train)
explainer = ClassifierExplainer(model, X_test, y_test, 
                               descriptions=feature_descriptions,
                               labels=['high risk', 'mid risk' , 'low risk'])

dashboard_ip = '192.168.88.146'
ExplainerDashboard(explainer, title="Model Dashboard", port=8050, ip=dashboard_ip).run()