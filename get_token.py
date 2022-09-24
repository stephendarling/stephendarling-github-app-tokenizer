import requests
import os
import boto3

name = os.getenv('NAME')

print(f'Env var NAME = {name}')