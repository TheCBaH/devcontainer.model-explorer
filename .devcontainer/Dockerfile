ARG VARIANT=12
FROM debian:${VARIANT}
RUN set -eux;\
    apt-get update;\
    export DEBIAN_FRONTEND=noninteractive; apt-get install -y --no-install-recommends\
  ca-certificates\
  curl\
  git\
  make\
  python3-pip\
  python3-venv\
  wget\
  xz-utils\
;\
    apt-get autoremove -y; apt-get clean -y ; apt-get clean; rm -rf /var/lib/apt/lists/*;\
    echo DONE
