terraform {
  backend "s3" {
    bucket = "tfstate-piyush-101"
    key    = "backend/10weeksofcloudops-demo.tfstate"
    region = "us-east-1"
    dynamodb_table = "remote-backend"
  }
}

#backend confifuration does not support variables

## to avoid locking of tfstate file we create dynamo DB table