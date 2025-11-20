from flask import Flask, render_template, request
import joblib
import numpy as np

app = Flask(__name__)
model = joblib.load("svm_lung_cancer.pkl")

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/predict', methods=['POST'])
def predict():
    # Create a mapping of symptom names to their converted values
    feature_mapping = {
        'smoking': lambda x: 2 if x == '1' else 1,
        'yellow_fingers': lambda x: 2 if x == '1' else 1,
        'anxiety': lambda x: 2 if x == '1' else 1,
        'peer_pressure': lambda x: 2 if x == '1' else 1,
        'chronic_disease': lambda x: 2 if x == '1' else 1,
        'fatigue': lambda x: 2 if x == '1' else 1,
        'allergy': lambda x: 2 if x == '1' else 1,
        'wheezing': lambda x: 2 if x == '1' else 1,
        'alcohol_consuming': lambda x: 2 if x == '1' else 1,
        'coughing': lambda x: 2 if x == '1' else 1,
        'shortness_of_breath': lambda x: 2 if x == '1' else 1,
        'swallowing_difficulty': lambda x: 2 if x == '1' else 1,
        'chest_pain': lambda x: 2 if x == '1' else 1
    }
    
    # Collect and convert features
    features = []
    for feature, value in request.form.items():
        if feature == 'age':
            features.append(int(value))
        elif feature in feature_mapping:
            features.append(feature_mapping[feature](value))
    
    # Ensure correct feature order for the model
    features = [features[0]] + features[1:]  # Age first, then symptoms
    
    # Make prediction
    prediction = model.predict([features])[0]
    result = "Positive for Lung Cancer" if prediction == 1 else "Negative for Lung Cancer"
    return render_template('result.html', result=result)

if __name__ == '__main__':
    app.run(debug=True)