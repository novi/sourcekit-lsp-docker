FROM norionomura/swift:20190214a

RUN apt-get update && \
apt-get install -y libsqlite3-dev libncurses-dev libblocksruntime-dev

RUN export SOURCEKIT_TOOLCHAIN_PATH=/

RUN git clone https://github.com/apple/sourcekit-lsp.git /sourcekit-lsp && \
cd /sourcekit-lsp && \
swift build -Xcxx -I/usr/lib/swift && \
cp .build/debug/sourcekit-lsp /usr/bin

WORKDIR /

CMD "/usr/bin/sourcekit-lsp"
