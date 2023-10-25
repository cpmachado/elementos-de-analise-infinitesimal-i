SRC =\
	af/af1/af1.tex\
	exercicios/tema1/exercicios-tema1.tex
DOCS =\
	af1.pdf\
	exercicios-tema1.pdf

all: ${DOCS}
	@echo all built

af1.pdf: af/af1/af1.tex
	latexmk $(PV) -use-make -pdf $< --auxdir=aux

exercicios-tema1.pdf: exercicios/tema1/exercicios-tema1.tex
	latexmk $(PV) -use-make -pdf $< --auxdir=aux

clean:
	rm -rf aux ${DOCS}

.PHONY: all clean
