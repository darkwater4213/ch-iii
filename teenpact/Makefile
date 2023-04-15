include aliases.mak
.PHONY: all
all: 1ac.html 1nc.html
	@rm */done.cookie 2>/dev/null && printf "$O debate/s2/wk5$N$M Done compiling $(DIR)*/$(FILE)_index.md\b$N" || printf "$E Nothing to be done for $(DIR)debate/s2/wk5$N"

1ac.html: affirmative/index.html
	@ln -sf $< $@

1nc.html: negative/index.html
	@ln -sf $< $@

.PRECIOUS: %/index.html
%/index.html: %/_index.md
	@printf "$M Building $(DIR)$(@D)/$(FILE)$(@F)$N"
	@printf "$M Compiling $(DIR)$(@D)/$(FILE)$(@F)$R..."
	@cd $(@D); kramdown $(<F) > $(@F); cd -
	@touch $(@D)/done.cookie

.PRECIOUS: %/_index.md
%/_index.md: %/*-*.md
	@printf "$C $(@D)$N"
	@printf "$M Creating $(DIR)$(@D)/$(FILE)$(@F)$R..."
	@cd $(@D); cat `ls | grep "-"` > $(@F); cd -
	@printf "\t\tDone!$N"

.PHONY: clean
clean:
	@test ! -e call.cookie || printf "$T"
	@printf "$M Cleaning $(DIR)debate/s2/wk5$N"
	@printf "$W Removing $(DIR)*/$(FILE)_index.md$R..."
	@rm */_index.md 2>/dev/null && printf "\t\tDone!$N" || printf "\n$T$E Problems removing $(DIR)*/$(FILE)_index.md$R; do they exist?$N"; touch fail.cookie
	@printf "$W Removing $(DIR)*/$(FILE)index.html$R..."
	@rm */index.html 2>/dev/null && printf "\t\tDone!$N" || printf "\n$T$E Problems removing $(DIR)*/$(FILE)index.html$R; do they exist?$N"; touch fail.cookie
	@printf "$W Removing $(FILE)*.html$R..."
	@rm *.html 2>/dev/null && printf "\t\tDone!$N" || printf "\n$T$E Problems removing $(FILE)*.html$R; do they exist?$N"; touch fail.cookie
