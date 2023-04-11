provider "google"{
    credentials = "${file("account.json")}"
    project = "my-project-cc-380615"
    region = "europe-central2"
}