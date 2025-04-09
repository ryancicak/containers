FROM ryancicak759/gpu-venv:cuda12.1.1 

# Ensure Python and CUDA paths prioritize the correct libraries
ENV PATH=/usr/local/cuda/bin:$PATH
ENV LD_LIBRARY_PATH=/usr/local/cuda/lib64:/usr/lib64:$LD_LIBRARY_PATH

# Upgrade pip to ensure dependency resolution issues are fixed
RUN /databricks/python3/bin/python -m pip install --upgrade pip

# Install PyTorch and torchvision with appropriate versions for CUDA 12.1
RUN /databricks/python3/bin/pip install \
    torch==2.3.0+cu121 \
    torchvision==0.18.0+cu121 \
    --index-url https://download.pytorch.org/whl/cu121

# Clear pip cache to reduce the image size
RUN /databricks/python3/bin/pip cache purge
