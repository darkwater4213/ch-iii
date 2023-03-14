include ../../../aliases.mak

.PHONY: all
all: affirmative.html negative.html
# 	@rm */done.cookie 2>/dev/null && printf "$O debate/s2/wk5$N$M Done compiling $(DIR)*/$(FILE)_index.md\b$N" || printf "$E Nothing to be done for $(DIR)debate/s2/wk5$N"
#	find fail cookies and migrate them
#	find done cookies and migrate
	@$(RETURN)

.PRECIOUS: %.html
%.html: %/index.html
	@printf "$M Linking $(DIR)$(<D)/$(FILE)$(<F)$R to $(FILE)$@$R..."
	@ln -sf $< $@ $(CATCH) "$E Linking failed, does $(FILE)$@$R exist?$N"

.PRECIOUS: %/index.html
%/index.html:
	@printf "$M Building $(FILE)$(@D).html$N"
	@touch $(@D)/call.cookie
	@make -C $(@D) | grep -vE "make\[.\]:"
	@rm $(@D)/call.cookie 2>/dev/null || test ! -e $(@D)/call.cookie

# .PRECIOUS: %/index.html
# %/index.html: %/_index.md
# 	@printf "$M Building $(DIR)$(@D)/$(FILE)$(@F)$R$N"
# 	@printf "$M Compiling $(DIR)$(@D)/$(FILE)$(@F)$R..."
# 	@cd $(@D); kramdown $(<F) > $(@F); cd -
# 	@touch $(@D)/done.cookie

# .PRECIOUS: %/_index.md
# %/_index.md: %/*-*.md
# 	@printf "$C $(@D)$N"
# 	@printf "$M Creating $(DIR)$(@D)/$(FILE)$(@F)$R..."
# 	@cd $(@D); cat `ls | grep "-"` > $(@F); cd -
# 	@printf "\t\tDone!$N"

.PHONY: clean
clean:
	@$(CHECK) "$T"
	@printf "$M Cleaning $(DIR)debate/s2/wk5$N"
	@printf "$W Removing $(DIR)*/$(FILE)_index.md$R..."
	@rm */_index.md $(CATCH) "\n$T$E Problems removing $(DIR)*/$(FILE)_index.md$R; do they exist?$N"; touch fail.cookie
	@printf "$W Removing $(DIR)*/$(FILE)index.html$R..."
	@rm */index.html $(CATCH) "\n$T$E Problems removing $(DIR)*/$(FILE)index.html$R; do they exist?$N"; touch fail.cookie
	@printf "$W Removing $(FILE)*.html$R..."
	@rm *.html $(CATCH) "\n$T$E Problems removing $(FILE)*.html$R; do they exist?$N"; touch fail.cookie
