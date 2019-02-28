FROM norionomura/swift:5020190226a

RUN apt-get update && \
apt-get install -y libsqlite3-dev libncurses-dev libblocksruntime-dev && \
rm -r /var/lib/apt/lists/*

RUN export SOURCEKIT_TOOLCHAIN_PATH=/

RUN git clone https://github.com/apple/sourcekit-lsp.git /sourcekit-lsp && \
cd /sourcekit-lsp && \
swift build -Xcxx -I/usr/lib/swift && \
cp .build/debug/sourcekit-lsp /usr/bin && \
rm -rf /sourcekit-lsp

WORKDIR /

CMD "/usr/bin/sourcekit-lsp"
