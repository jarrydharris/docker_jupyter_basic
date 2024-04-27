# Docker and Jupyter boilerplate

This repository provides a minimal Docker-based setup for running Jupyter Lab, ideal for data science projects. It uses Alpine Linux to keep the image size small and the environment clean and manageable. This boilerplate is perfect for anyone looking to jumpstart their data science project with minimal setup and maximum reproducibility.

## Features

- **Lightweight Alpine Linux**: Small Docker image size with essential tools installed.
- **Jupyter Lab**: Ready-to-use Jupyter Lab for interactive development.
- **Easy Customization**: Simple to fork and adapt for any data science project.
- **Reproducibility**: Ensures that your environment is consistent across different machines.

## Prerequisites

Before you begin, ensure you have Docker installed on your system. If you do not have Docker installed, follow the instructions at [Docker's official site](https://docs.docker.com/get-docker/).

## Getting Started

### 1. Fork the Repository

Start by forking this repository to your own GitHub account. 

### 2. Clone Your Fork

Clone your forked repository to your local machine:

```bash
git clone https://github.com/<your-username>/docker_jupyter_basic.git
cd docker_jupyter_basic
```

### 3. **Configure the image**

Create a `.env` file and define `IMAGE_TAG` and `JUPYTER_PORT`:

```bash
echo -e "IMAGE_TAG=jupyter-basic\nJUPYTER_PORT=8888" > .env
```

This will set the environment variables needed to build and run the container.

### 4. **Build the Docker image**

Use the provided Makefile to build the Docker image:

```bash
make build
```

### 5. **Start the Jupyter Lab server**

After building the image, you can start the Jupyter Lab server:

```bash
make run
```

This command runs the Docker container and starts Jupyter Lab, binding it to http://localhost:<JUPYTER_PORT>. Jupyter Lab will be accessible from your browser at this URL.
