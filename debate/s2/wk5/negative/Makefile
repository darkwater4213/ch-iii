include ../../../../aliases.mak

.PRECIOUS: index.html
index.html: _index.md
	@$(CHECK) "$T$T"
	@printf "$M Compiling $(DIR)negative/$(FILE)$@$R..."
	@kramdown $< > $@ $(CATCH) "$E Compilation threw errors, please check your markdown.$N"
	@printf "$O negative/$N"; $(RETURN)

.PRECIOUS: _index.md
_index.md: *-*.md
	@$(CHECK) "$C negative/$N$T$T";
	@printf "$M Creating $(DIR)negative/$(FILE)$@$R..."
	@cat `ls | grep "-"` > $@
	@printf "\t\tDone!$N"

.PHONY: clean
clean:
	@$(CHECK) "$T$T"
	@printf "$W Removing $(FILE)_index.md$R..."
	@rm _index.md $(CATCH) "\n$T$E Problems removing $(FILE)_index.md$R; do they exist?$N"; $(FAIL)
