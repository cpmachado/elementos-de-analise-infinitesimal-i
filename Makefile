SRC =\
	e-folio/e-folio-a/2200909efolioA.tex\
	exercicios/tema1/exercicios-tema1.tex
DOCS =\
	exercicios-tema1.pdf\
	main.pdf

2200909efolioA.pdf: e-folio/e-folio-a/2200909efolioA.tex
	latexmk $(PV) -use-make -pdf $< --auxdir=aux

exercicios-tema1.pdf: exercicios/tema1/exercicios-tema1.tex
	latexmk $(PV) -use-make -pdf $< --auxdir=aux

clean:
	rm -rf aux ${DOCS}

.PHONY: clean watch
