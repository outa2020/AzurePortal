import urllib.request
import json
from dotenv import load_dotenv
import os
# Request data goes here
# The example below assumes JSON formatting which may be updated
# depending on the format your endpoint expects.
# More information can be found here:
# https://docs.microsoft.com/azure/machine-learning/how-to-deploy-advanced-entry-script

# Modify this dictionary to contain the data you want to send to the endpoint
data = {
  "input_data": {
    "Date": "27/11/2025",
    "Unit": "Maternity",
    "Day": "Thursday",
    "IsHoliday": false,
    "DayOfWeek": 4
  }
}

body = str.encode(json.dumps(data))

url = 'https://mlw-hhn-dev-20251127-ntolu.canadacentral.inference.ml.azure.com/score'
# Replace this with the primary/secondary key, AMLToken, or Microsoft Entra ID token for the endpoint


load_dotenv()
ENDPOINT_API_KEY = os.getenv('ENDPOINT_API_KEY')

api_key = ENDPOINT_API_KEY

if not api_key:
    raise Exception("A key should be provided to invoke the endpoint")


headers = {'Content-Type':'application/json', 'Accept': 'application/json', 'Authorization':('Bearer '+ api_key)}

req = urllib.request.Request(url, body, headers)

try:
    response = urllib.request.urlopen(req)

    result = response.read()
    print(result)
except urllib.error.HTTPError as error:
    print("The request failed with status code: " + str(error.code))

    # Print the headers - they include the requert ID and the timestamp, which are useful for debugging the failure
    print(error.info())
    print(error.read().decode("utf8", 'ignore'))