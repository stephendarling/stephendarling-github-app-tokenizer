import requests
import os
import boto3
import argparse
import sys

parser = argparse.ArgumentParser(description="Generate GitHub token from App Key + ID")
parser.add_argument("app_id", type=str, help="ID of the GitHub app")
parser.add_argument("private_key", type=str, help="Private key associated with the GitHub app")
args = parser.parse_args()

app_id = args.app_id
private_key = args.private_key
token = f'{app_id}---{private_key}'
sys.exit(token)