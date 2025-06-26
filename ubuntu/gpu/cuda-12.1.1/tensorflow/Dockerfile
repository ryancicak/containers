# Use base image with CUDA 12.1.1
FROM ryancicak759/gpu-venv:cuda12.1.1

# Enable NVIDIA repos to temporarily install additional packages if needed
RUN cd /etc/apt/sources.list.d && \
    test -f cuda-ubuntu2204-x86_64.list.disabled && \
    mv cuda-ubuntu2204-x86_64.list.disabled cuda-ubuntu2204-x86_64.list || true

# Tensorflow would require cuda-toolkit-12-1 been installed.
RUN apt-get update \
    && apt-get --no-install-recommends -y install cuda-toolkit-12-1

# Upgrade pip to ensure compatibility with TensorFlow installation
RUN /databricks/python3/bin/python -m pip install --upgrade pip

# Disable NVIDIA repos to prevent accidental upgrades
RUN cd /etc/apt/sources.list.d && \
    test -f cuda-ubuntu2204-x86_64.list && \
    mv cuda-ubuntu2204-x86_64.list cuda-ubuntu2204-x86_64.list.disabled || true

# Install TensorFlow 2.17 and TensorBoard (compatible with CUDA 12.1)
RUN /databricks/python3/bin/pip install \
    tensorflow==2.17.0 \
    tensorboard==2.17.0
