FROM quay.io/modh/runtime-images@sha256:e0d97147aa6ea050cea12b9759faf4c0e537b043b652cab4ffddc5c2caac23cc

# Copying custom packages
# COPY requirements.txt ./


# RUN echo "Installing softwares and packages" && \
#     # Install Python packages \
#     pip install -r ./requirements.txt && \
#     echo 'done with pip install'

WORKDIR /opt/app-root/bin

COPY --chown=1001:0 utils/bootstrapper.py utils/bootstrapper.py

WORKDIR /opt/app-root/src