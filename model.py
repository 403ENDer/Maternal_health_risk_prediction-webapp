import pandas as pd
from sklearn.tree import DecisionTreeClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score, classification_report
import sys

def model():
    df = pd.read_excel('F:\DCS-SEM 5\J2EE\Project\Cleaned_data.xlsx')
    X_train, X_test, y_train, y_test = train_test_split(df.drop('RiskLevel', axis=1), df['RiskLevel'], test_size=0.3, random_state=42)
    model_dec = DecisionTreeClassifier(random_state=42)
    model_dec.fit(X_train, y_train)
    y_predict = model_dec.predict(X_test)
    accuracy = accuracy_score(y_predict, y_test)
    print(1)

def input():
    model()

input() 

