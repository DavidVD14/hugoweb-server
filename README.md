!<img src="./Readme-content/mcast.png" width="400" />
!<img src="./Readme-content/hugo.png" width="300" />

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


Hello world test