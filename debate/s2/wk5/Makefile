.PHONY: all
all: affirmative/_index.md negative/_index.md
	@printm; printf "Done compiling ${ANSI_BOLD}${ANSI_BLUEB}*/${ANSI_COLOR}_index.md${ANSI_BOLD_}\n"

affirmative/_index.md: affirmative/*-*.md
	@printm; printf "Compiling ${ANSI_BOLD}${ANSI_BLUEB}affirmative/${ANSI_COLOR}_index.md${ANSI_BOLD_}..."
	@cat `ls affirmative/* | grep "-"` >> $@
	@printm; printf "\t${ANSI_RESET}Done!\n"

negative/_index.md: negative/*-*.md
	@printm; printf "Compiling ${ANSI_BOLD}${ANSI_BLUEB}negative/${ANSI_COLOR}_index.md${ANSI_BOLD_}..."
	@cat `ls negative/* | grep "-"` >> $@
	@printm; printf "\t${ANSI_RESET}Done!\n"

.PHONY: clean
clean:
	rm */_index.md
