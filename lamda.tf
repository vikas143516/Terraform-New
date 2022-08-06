resource "aws_lambda_function" "my_lambda" {
  function_name = "Writing_data"
  handler          = "index.handler"
  role             =  aws_iam_role.lambda_role.arn
  runtime          = "nodejs12.x"
  timeout          = 30
  memory_size      = 1024
  filename         = "../dist/init.zip"
}