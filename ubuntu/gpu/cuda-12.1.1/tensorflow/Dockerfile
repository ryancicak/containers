FROM ryancicak759/gpu-venv:cuda12.1.1 

#I DID NOT TEST TensorFlow with CUDA 12.1.1, as the pip command below installing tensorflow 2.13 must be constructed
#to pull for CUDA 12.1, as I did for pytorch
# Enable NVIDIA repos with wildcard pattern matching
RUN cd /etc/apt/sources.list.d && \
    mv cuda-*-ubuntu2204-x86_64.list.disabled cuda-repo.list 2>/dev/null || true

# Tensorflow would require cuda-toolkit-11-8 been installed.
RUN apt-get update \
    && apt-get --no-install-recommends -y install cuda-toolkit-12-1

# Disable NVIDIA repos to prevent accidental upgrades.
# Disable repos using same wildcard pattern
RUN cd /etc/apt/sources.list.d && \
    mv cuda-*-ubuntu2204-x86_64.list cuda-repo.disabled 2>/dev/null || true

# install the tensorflow versions
RUN /databricks/python3/bin/pip install \
    tensorflow==2.13.0 \
    tensorboard==2.13.0
