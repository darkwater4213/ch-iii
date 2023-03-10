.PHONY: all
all: setup debate

.PHONY: setup
setup:
	@./setup.sh

.PHONY: debate
debate:
	@alias printm; printf "Building ${ANSI_BOLD}${ANSI_BLUEB}debate/s2/wk5${ANSI_COLOR}\n"
	@make -C debate/s2/wk5
