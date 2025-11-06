import json
import joblib
import numpy as np
import os

def init():
    """
    This function is called when the container is initialized/started.
    """
    global model
    # Get the path to the registered model file and load it
    model_path = os.path.join(os.getenv('AZUREML_MODEL_DIR'), 'model.pkl')
    model = joblib.load(model_path)
    print("Model loaded successfully")

def run(raw_data):
    """
    This function is called for every invocation of the endpoint.
    """
    try:
        data = json.loads(raw_data)['data']
        data = np.array(data)
        result = model.predict(data)
        # Return predictions as JSON
        return json.dumps({"result": result.tolist()})
    except Exception as e:
        error = str(e)
        return json.dumps({"error": error})
