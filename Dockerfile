# https://herrmann.tech/en/blog/2021/02/08/how-to-build-custom-environment-for-jupyter-in-docker.html
FROM jupyter/minimal-notebook

USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    graphviz \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


USER jovyan


# Mike Customization here
COPY requirements.txt /tmp/

RUN pip3 install --upgrade pip && \
    pip3 install parquet-tools && \
    pip3 install -r /tmp/requirements.txt

# AWS cli
#USER root
#RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
#    unzip awscliv2.zip && \
#    ./aws/install


WORKDIR "${HOME}"
