# Development Environment

This development environment is intended as a reproducible environment
including NeoVim.  The `Dockerfile` can be modified to install any build
requirements for your project.

# Using the Environment

In order to use the environment, simply run `./in-container.sh <command>`.
This will build the image and run the command in the resulting image.  In order
to stay in the environment, you can run `./in-container.sh /bin/bash`.  This
will give you a shell in the container.

# NeoVim Configuration

Copy your NeoVim configuration from `$HOME/.config/nvim` to
`Docker/config-nvim`.  It will be picked up when you build and run the
container.
