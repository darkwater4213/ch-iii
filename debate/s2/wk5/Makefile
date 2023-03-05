.PHONY: full
full: all
	make clean
	make all

.PHONY: all
all: affirmative/_index.md negative/_index.md

affirmative/_index.md: affirmative/*-*.md
	cat `ls affirmative/* | grep "-"` >> $@

negative/_index.md: negative/*-*.md
	cat `ls negative/* | grep "-"` >> $@

.PHONY: clean
clean:
	rm */_index.md
