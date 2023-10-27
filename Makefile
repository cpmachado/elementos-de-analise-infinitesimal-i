SRC =\
	exercicios/tema1/exercicios-tema1.tex
DOCS =\
	exercicios-tema1.pdf

all: ${DOCS}
	@echo todos recursos compilados

exercicios-tema1.pdf: exercicios/tema1/exercicios-tema1.tex
	latexmk $(PV) -use-make -pdf $< --auxdir=aux

clean:
	rm -rf aux ${DOCS}

.PHONY: all clean ${DOCS}
