include aliases.mak
.PHONY: all
all: debate/s2/wk5/%

debate/s2/wk5/%:
	@printf "$M Building $(DIR)$(@D)$N$C $(@D)$N"
	@touch $(@D)/call.cookie
	@make -C $(@D) | grep -vE "make\[.\]:"
	@rm $(@D)/*.cookie 2>/dev/null || test ! -e $(@D)/*.cookie

.PHONY: clean
clean:
	@printf "$W Cleaning $B$IALL$R targets$N"
	@touch debate/s2/wk5/call.cookie
	@printf "$C debate/s2/wk5$N"
	@make -C debate/s2/wk5 clean | grep -vE "make\[.\]:" || printf "$E Problems encountered; see above.$N"
	@rm \$(find . -name fail.cookie -type f || echo ./fail.cookie) || printf "$M Done cleaning all targets$N"
