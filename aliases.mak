T := \\040\\040\\040\\040
X := \\033

R := $X[0m

BLACK := $X[30m
BLACKB := $X[90m
RED := $X[31m
REDB := $X[91m
GREEN := $X[32m
GREENB := $X[92m
YELLOW := $X[33m
YELLOWB := $X[93m
BLUE := $X[34m
BLUEB := $X[94m
PURPLE := $X[35m
PURPLEB := $X[95m
CYAN := $X[36m
CYANB := $X[96m
WHITE := $X[37m
WHITEB := $X[97m

B := $X[1m
D := $X[2m
I := $X[3m
U := $X[4m

DIR := $B$(BLUEB)
FILE := $R$B
EXEC := $R$B$(GREENB)
N := $R\n

H := $T$B$(BLUEB)[\#]$R:
M := $T$B$(GREENB)[>]$R:
W := $T$B$(YELLOW)[!]$R:
C := $T$B$(YELLOWB)[@]$R: Entering$(DIR)
O := $T$B$(YELLOWB)[@]$R: Leaving$(DIR)
E := $T$B$(RED)[!]$R:
P := $T$B$(PURPLE)[?]$R:

# a := $(DIR)$(@D)/$(FILE)$(@F)$R
# L := $(DIR)$(<D)/$(FILE)$(<F)$R

# CALL := printf "$M Building $(DIR)$(@D)$N$C $(@D)$N"; touch $(@D)/call.cookie; make -C $(@D) | grep -vE "make\[.\]:"; rm $(@D)/call.cookie 2>/dev/null || test ! -e $(@D)/call.cookie
# CLEAN := make clean -C
MCLEANDIR := printf "$M Cleaning $(DIR)%b/$N"
CHECK := test ! -e call.cookie || printf "%b"
CONSOLIDATE := { mv */fail.cookie . --force 2>/dev/null; mv */fail.cookie . --force 2>/dev/null; { test -e fail.cookie && printf "$E Failed to build "; } && touch print.cookie; } || { mv */done.cookie . --force 2>/dev/null; mv */done.cookie . --force 2>/dev/null; { test -e done.cookie && printf "$M Done building " || printf "$E Nothing to be done for "; } && touch print.cookie; }; rm call.cookie 2>/dev/null || rm fail.cookie done.cookie 2>/dev/null; test ! -e print.cookie || printf "$(DIR)%b"
RETURN := rm print.cookie 2>/dev/null; mv call.cookie done.cookie --force 2>/dev/null; test ! -e call.cookie
CATCH := 2>/dev/null && printf "\t\tDone!$N" || printf "%b"
MAKECATCH := | grep -vE "make\[.\]:" || printf "%b"
FAIL := $(CHECK) \$(touch fail.cookie)
