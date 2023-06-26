terraform {
    backend "gcs" {
        bucket = "tf-state-bucket-202304168659685447"
        prefix = "terraform-k8s-fibonacci"
    }
}