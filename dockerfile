# Base image with OpenGL and X11 support
FROM ubuntu:22.04

# Prevent interactive prompts during build
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt update && apt install -y \
    g++ \
    freeglut3-dev \
    libglew-dev \
    libglu1-mesa-dev \
    libgl1-mesa-dev \
    libx11-dev \
    libxmu-dev \
    libxi-dev \
    cmake \
    make \
    x11-apps \
    && apt clean

# Create a working directory
WORKDIR /app

# Copy your source code into the container
COPY . /app

# Compile the game
RUN make

# Run the game
CMD ["./gungame"]
