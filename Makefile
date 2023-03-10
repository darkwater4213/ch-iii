.PHONY: all
all: debate

.PHONY: debate
debate:
	pushd debate/s2/wk5
	make
	popd
