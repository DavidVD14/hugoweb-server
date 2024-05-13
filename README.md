![Alt text](Readme-content/mcast.png)
!<img src="./Readme-content/hugo.png" width="100" />

This server is used to host a website using Hugo for my thesis dissertation.

Steps to reinitilise the theme in the repository:

    # Initilise the theme
    git submodule init

    # Update the theme
    git submodule update


To build and run image:

    # Build the image
    docker build -t davtek/hugoweb:latest .

    # Push image to dockerhub
    docker push davtek/hugoweb:latest

    # Run Docker locally
    docker run davtek/hugoweb:latest
