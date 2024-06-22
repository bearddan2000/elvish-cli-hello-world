FROM golang

WORKDIR /workspace

RUN apt update && \
    apt install -y git clang make

RUN git clone https://github.com/elves/elvish.git

WORKDIR /workspace/elvish

RUN make

WORKDIR /code

COPY bin .

CMD "./run.sh"