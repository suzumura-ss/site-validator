FROM python:3

LABEL AUTHOR Toshiyuki Suzumura

ENV LANG=en_US.UTF-8
WORKDIR /tmp/target
RUN apt-get -qq update && \
    apt-get install -y \
        default-jre aspell aspell-en && \
    pip3 install html5validator

CMD [ "html5validator", "--root", "/tmp/target" ]
