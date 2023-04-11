include ../../../aliases.mak
FOLDER := debate/s2/wk5

.PHONY: all
all: affirmative.html negative.html
	@$(CHECK) "$T$O $(FOLDER)$N"
	@$(CONSOLIDATE) "$(DIR)$(FOLDER)\b$N"
	@$(RETURN)

.PRECIOUS: %.html
%.html: %/index.html
	@$(CHECK) "$T"
	@printf "$M Linking $(DIR)$(<D)/$(FILE)$(<F)$R to $(FILE)$@$R..."
	@ln -sf $< $@ $(CATCH) "$E Linking failed, does $(FILE)$@$R exist?$N"

.PRECIOUS: %/index.html
%/index.html:
	@$(CHECK) "$T"
	@printf "$M Building $(FILE)$(@D).html$N"
	@touch $(@D)/call.cookie
	@make -C $(@D) | grep -vE "make\[.\]:"
	@rm $(@D)/call.cookie 2>/dev/null || test ! -e $(@D)/call.cookie

.PHONY: clean
clean:
	@$(CHECK) "$T$T$M Cleaning $(DIR)$(FOLDER)$N"
	@$(CHECK) "$T"
	@printf "$W Removing $(DIR)*/$(FILE)_index.md$R..."
	@rm */_index.md $(CATCH) "$N$T$T$E Problems removing $(DIR)*/$(FILE)_index.md$R; do they exist?$N"; $(FAIL)
	@$(CHECK) "$T"
	@printf "$W Removing $(DIR)*/$(FILE)index.html$R..."
	@rm */index.html $(CATCH) "$N$T$T$E Problems removing $(DIR)*/$(FILE)index.html$R; do they exist?$N"; $(FAIL)
	@$(CHECK) "$T"
	@printf "$W Removing $(FILE)*.html$R..."
	@rm *.html $(CATCH) "$N$T$T$E Problems removing $(FILE)*.html$R; do they exist?$N"; $(FAIL)
