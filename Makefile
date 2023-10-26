SRC =\
	e-folio/e-folio-a/main.tex\
	exercicios/tema1/exercicios-tema1.tex
DOCS =\
	exercicios-tema1.pdf\
	main.pdf

main.pdf: e-folio/e-folio-a/main.tex
	latexmk $(PV) -use-make -pdf $< --auxdir=aux

exercicios-tema1.pdf: exercicios/tema1/exercicios-tema1.tex
	latexmk $(PV) -use-make -pdf $< --auxdir=aux

clean:
	rm -rf aux ${DOCS}

.PHONY: clean watch
