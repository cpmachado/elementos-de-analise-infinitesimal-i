SRC =\
	 exercicios/tema1/exercicios-tema1.tex\
	 exercicios/tema2/exercicios-tema2.tex
DOCS =\
	exercicios-tema1.pdf\
	exercicios-tema2.pdf

all: ${DOCS}
	@echo todos recursos compilados

exercicios-tema1.pdf: exercicios/tema1/exercicios-tema1.tex
	latexmk $(PV) -use-make -pdf $< --auxdir=aux

exercicios-tema2.pdf: exercicios/tema2/exercicios-tema2.tex
	latexmk $(PV) -use-make -pdf $< --auxdir=aux

clean:
	rm -rf aux ${DOCS}

.PHONY: all clean ${DOCS}
