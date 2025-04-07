# Makefile para generar README.md

all: README.md

README.md: guessinggame.sh
	echo "# Proyecto: Guessing Game" > README.md
	echo "" >> README.md
	echo "Fecha de ejecución: $$(date)" >> README.md
	echo "" >> README.md
	echo "Número de líneas de código en guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md
