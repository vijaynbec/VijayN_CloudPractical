terraform {
  backend "s3" {
    bucket = "terraform-state-learn2cloudaws"
    key    = "backend/test/ekstf.tfstate"
    region = "us-east-1" #   backend wont support the var. values
    # dynamodb_table = "remote-backend"   # need to keep partition key as lock id and create it seperately
    use_lockfile = true
  }
}
