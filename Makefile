include aliases.mak
.PHONY: all
all: debate

.PHONY: debate
debate:
	@printf "$M Building $(DIR)debate/s2/wk5$N"
	@printf "$C debate/s2/wk5$N"
	@touch debate/s2/wk5/call.cookie
	@make -C debate/s2/wk5 | grep -vE "make\[.\]:"
	@rm debate/s2/wk5/call.cookie

.PHONY: clean
clean:
	@printf "$W Cleaning $B$IALL$R targets$N"
	@printf "$C debate/s2/wk5$N"
	@make -C debate/s2/wk5 clean | grep -vE "make\[.\]:"
