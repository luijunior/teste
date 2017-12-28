import boto3

# Get the service client
s3 = boto3.resource('s3',
            aws_access_key_id='',
            aws_secret_access_key='')

bucket = s3.Bucket('luiz-test')

for lista in bucket.objects.all():
    print(lista.key)
    bucket.download_file(lista.key, lista.key)
