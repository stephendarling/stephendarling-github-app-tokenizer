import requests
import os
import boto3

app_id = os.environ.get('APP_ID')

print(f'Env var APP_ID = {app_id}')