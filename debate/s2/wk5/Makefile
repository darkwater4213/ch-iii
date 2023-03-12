include ../../../aliases.mak
.PHONY: all
all: affirmative/_index.md negative/_index.md
	@printf "$Odebate/s2/wk5$N"
	@printf "$M Done compiling $(DIR)*/$(FILE)_index.md\b$N"
	@rm *.cookie

affirmative/_index.md: affirmative/*-*.md
	@if [ -e call.cookie ]; then
	@	printf "$T$M Compiling $(DIR)affirmative/$(FILE)_index.md$R..."
	@else
	@	printf "$M Compiling $(DIR)affirmative/$(FILE)_index.md$R..."
	@fi
	@cat `ls affirmative/* | grep "-"` >> $@
	@printf "\t\tDone!$N"
	@touch .affirmative__index.md.cookie

negative/_index.md: negative/*-*.md
	@if [ -e call.cookie ]; then
	@	printf "$T$M Compiling $(DIR)negative/$(FILE)_index.md$R..."
	@else
	@	printf "$M Compiling $(DIR)negative/$(FILE)_index.md$R..."
	@fi
	@cat `ls negative/* | grep "-"` >> $@
	@printf "\t\tDone!$N"
	@touch .negative__index.md.cookie

.PHONY: clean
clean:
	@printf "$T$M Cleaning $(DIR)debate/s2/wk5$N"
	@printf "$T$W Removing $(DIR)*/$(FILE)_index.md$R..."
	@rm */_index.md # 2>/dev/null
	@if [ $? -eq 0 ]; then
	@	printf "\t\tDone!$N"
	@else
	@	printf "\n$T$E Problems removing $(DIR)*/$(FILE)_index.md$R; do they exist?$N"
	@fi
	@rm *.cookie 2>/dev/null
