include ../../../aliases.mak
.PHONY: all
all: affirmative/_index.md negative/_index.md
	@rm $(ls -R | grep done.cookie) 2>/dev/null && printf "$Odebate/s2/wk5$N$M Done compiling $(DIR)*/$(FILE)_index.md\b$N" || printf "$E Nothing to be done for $(DIR)debate/s2/wk5$N!"

affirmative/_index.md: affirmative/*-*.md
	@if [ -e call.cookie ]; then printf "$T$M Compiling $(DIR)affirmative/$(FILE)_index.md$R..."; else printf "$M Compiling $(DIR)affirmative/$(FILE)_index.md$R..."; fi
	@cat `ls affirmative/* | grep "-"` >> $@
	@printf "\t\tDone!$N"
	@touch affirmative/done.cookie

negative/_index.md: negative/*-*.md
	@if [ -e call.cookie ]; then printf "$T$M Compiling $(DIR)negative/$(FILE)_index.md$R..."; else printf "$M Compiling $(DIR)negative/$(FILE)_index.md$R..."; fi
	@cat `ls negative/* | grep "-"` >> $@
	@printf "\t\tDone!$N"
	@touch negative/done.cookie

.PHONY: clean
clean:
	@printf "$T$M Cleaning $(DIR)debate/s2/wk5$N"
	@printf "$T$W Removing $(DIR)*/$(FILE)_index.md$R..."
	@rm */_index.md 2>/dev/null && printf "\t\tDone!$N" || printf "\n$T$E Problems removing $(DIR)*/$(FILE)_index.md$R; do they exist?$N"
	@rm *.cookie 2>/dev/null || touch fail.cookie
