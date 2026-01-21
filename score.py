
import json
import joblib
import pandas as pd
from azureml.core.model import Model

def init():
    global model, features
    # Load the model and features
    model_path = Model.get_model_path('blanket_usage_date_only_model')
    features_path = Model.get_model_path('blanket_date_only_features')
    
    model = joblib.load(model_path)
    features = joblib.load(features_path)

def run(raw_data):
    try:
        # Parse input data
        data = json.loads(raw_data)['data']
        df = pd.DataFrame(data)
        
        # Make predictions
        predictions = model.predict(df[features])
        predictions = predictions.round().astype(int).clip(lower=0)
        
        # Return results
        return json.dumps({'predictions': predictions.tolist()})
    except Exception as e:
        return json.dumps({'error': str(e)})
