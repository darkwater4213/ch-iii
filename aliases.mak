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

H := $T$(BLUEB)[\#]$R:
M := $T$(GREENB)[>]$R:
W := $T$(YELLOW)[!]$R:
C := $T$(YELLOWB)[@]$R: Entering$(DIR)
O := $T$(YELLOWB)[@]$R: Leaving$(DIR)
E := $T$(RED)[!]$R:
P := $T$(PURPLE)[?]$R:
