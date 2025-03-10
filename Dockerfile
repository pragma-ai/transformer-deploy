FROM nvcr.io/nvidia/tritonserver:21.12-py3

# see .dockerignore to check what is transfered
COPY . ./

RUN pip3 install -U pip && \
    pip3 install nvidia-pyindex && \
    pip3 install -e ".[GPU]" -f https://download.pytorch.org/whl/cu113/torch_stable.html --extra-index-url https://pypi.ngc.nvidia.com --no-cache-dir
