# Terraform Docker NGINX

This project uses **Terraform** and the **Kreuzwerker Docker provider** to automate the deployment of an **NGINX container** using Docker.

## 🚀 What It Does

- Pulls the latest `nginx` image from Docker Hub
- Runs it in a Docker container
- Exposes it on port `8081` on your local machine

## 📁 Project Structure


## ⚙️ Requirements

- [Terraform](https://www.terraform.io/downloads)
- [Docker](https://docs.docker.com/get-docker/) (running locally)

## 📦 Provider Used

```hcl
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "latest"
    }
  }
}
