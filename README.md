# sourcekit-lsp-docker

## Usage

SourceKit-LSP (Server) in Docker container will access your indexing databases under `.build` directory on your Swift projects. 
You will need have access from Docker container. 


Put launching script like this in your PATH and,

```
#!/bin/sh
# /usr/local/bin/sourcekit-lsp-docker

PROJS=/path/to/your/projects/parent/directory

exec docker run --rm -i -v $PROJS:$PROJS yusukeito/sourcekit-lsp-docker
```

Then configure VSCode by following [Editors](https://github.com/apple/sourcekit-lsp/tree/master/Editors) and use below configurations.

* Server Path: sourcekit-lsp-docker
* Toolchain Path: /

On the other editors, it might work by setting as well.

