FROM quay.io/modh/odh-minimal-notebook-container@sha256:c87a41b5ea4dfab158347f6f7d0c6a60a65c6d56e6d1a0f69c9ed12d762f7a10

# Copying custom packages
COPY requirements.txt ./
COPY utils utils/


RUN echo "Installing softwares and packages" && \
    # Install Python packages \
    pip install -r ./requirements.txt && \
    echo 'done with pip install'

WORKDIR /opt/app-root/bin

COPY --chown=1001:0 utils utils/

WORKDIR /opt/app-root/src