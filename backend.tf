terraform {
  backend "gcs" {
    bucket = "santhuterraform-state"
    prefix = "environments/prod/networking"
  }
}
