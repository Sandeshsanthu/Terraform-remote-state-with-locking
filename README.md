# Terraform-remote-state-with-locking
 gcloud storage buckets create gs://santhuterraform-state \
  --project=project-d1a95002-78b0-493b-b7e \
  --location=US \
  --uniform-bucket-level-access


gcloud storage buckets update gs://santhuterraform-state   -
-versioning

 gcloud storage buckets update gs://santhuterraform-state   -
-lifecycle-file=lifecycle.json
