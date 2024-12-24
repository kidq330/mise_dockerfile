FROM jdxcode/mise:latest

RUN \
  apt-get -qq update && apt-get -qq install -y --no-install-recommends \
  trash-cli \
  bash-completion \
  tldr \
  && /bin/rm -rf /var/lib/apt/lists/* \
  && echo 'source <(mise activate bash)' >> ~/.bashrc

ENTRYPOINT [ "/bin/bash", "-o", "pipefail" ]
