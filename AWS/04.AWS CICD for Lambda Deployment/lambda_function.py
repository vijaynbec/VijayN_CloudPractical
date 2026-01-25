import json


def lambda_handler(event, context):
    # TODO implement
    html = """
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>CI/CD pipeline</h1>
    <p>Let's build a CI/CD pipeline, to automate the deployment.</p>
    <h2>We have successfully build our first CI/CD pipeline into Lambda Function New Version. Well Done!!!</h2>
</body>
</html>
    """
    return {
        'statusCode': 200,
        'body': html,
        "headers": {
            'content-Type': 'text.html'
        }

    }
