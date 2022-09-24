import requests
import os
import boto3
import argparse

parser = argparse.ArgumentParser(description="Generate GitHub token from App Key + ID")
parser.add_argument("app_id", type=str, help="ID of the GitHub app")
parser.add_argument("private_key", type=str, help="Private key associated with the GitHub app")
args = parser.parse_args()

app_id = args.app_id
private_key = args.private_key

print(f'Arg for app_id = {app_id}')
print(f'Arg for private_key = {private_key}')

print(f"::set-output name=token::{app_id}+{private_key}")