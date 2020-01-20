NAME := TTC19

all: agreements ttc

.PHONY: agreements ttc

preface:
	latexmk -pdf -gg preface.tex

proceedings:
	latexmk -pdf -gg proceedings.tex

agreements:
	zip -r AGREEMENTS-$(NAME).zip AGREEMENTS-$(NAME)

ttc: preface proceedings
	zip -r $(NAME).zip $(NAME)
