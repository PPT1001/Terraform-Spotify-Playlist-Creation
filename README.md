# Terraform-Spotify-Playlist-Creation

This project uses Terraform to create playlists in Spotify using the Spotify API. The playlists are created based on many factors, such as the user's top artists, top tracks, and top genres.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- [Docker](https://docs.docker.com/get-docker/) installed
- [Spotify Developer Account](https://developer.spotify.com/dashboard/) and API credentials

## Getting Started

1. **Clone the repository:**
    ```sh
    git clone https://github.com/yourusername/Terraform-Spotify.git
    cd Terraform-Spotify
    ```

2. **Create a `.env` file:**
    ```sh
    touch .env
    ```

3. **Add the following environment variables to the `.env` file:**
    ```sh
    SPOTIFY_CLIENT_ID=your-client-id
    SPOTIFY_CLIENT_SECRET=your-client-secret
    ```

4. **Run the docker container for spotify Auth Proxy:**
    ```sh
    docker run --rm -it -p 27228:27228 --env-file .env ghcr.io/conradludgate/spotify-auth-proxy
    ```

5. **Create a terraform.tfvars file:**
    ```sh
    touch terraform.tfvars
    ```

6. **Add the following variables to the `terraform.tfvars` file:**
    ```sh
    api_key = "your-api"
    ```
    This is the API key retreived after running the docker container.

5. **Configure your Spotify API credentials:**
    Update the `variables.tf` file with your Spotify API credentials.

6. **Initialize Terraform:**
    ```sh
    terraform init
    ```

7. **Plan the deployment:**
    ```sh
    terraform plan
    ```

8. **Apply the deployment:**
    ```sh
    terraform apply
    ```

## For More Information

- [Create a Spotify playlist with Terraform](https://developer.hashicorp.com/terraform/tutorials/community-providers/spotify-playlist)
