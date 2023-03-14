include aliases.mak
.PHONY: all
all: debate/s2/wk5/%

debate/s2/wk5/%:
	@printf "$M Building $(DIR)$(@D)$N$C $(@D)$N"
	@touch $(@D)/call.cookie
	@make -C $(@D) | grep -vE "make\[.\]:"
	@rm $(@D)/call.cookie 2>/dev/null || test ! -e $(@D)/call.cookie

.PHONY: clean
clean:
	@printf "$W Cleaning $B$IALL$R targets$N"
	@printf "$C debate/s2/wk5$N"
	@make -C debate/s2/wk5 clean $(MAKECATCH) "$E Problems encountered; see above.$N"
	@rm \$(ls -R | grep fail.cookie) 2>/dev/null || printf "$M Done cleaning all targets$N"
