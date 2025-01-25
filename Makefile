#Thank you to Franklin Bristow for allowing me to use this Makefile as the base of the presentation.

SLIDES.md := $(wildcard slides/*.md)

all: slides.html

slides.html: slides.md
	pandoc -f markdown -t revealjs --standalone $< -o $@ \
		-V header-includes="<meta http-equiv='refresh' content='14400'>" \
		-V autoSlide=7500 -V loop=true --embed-resources \
		-V revealjs-url=reveal.js \
		--resource-path=.:slides/
# 14400 is 4 hours, this slide show will auto refresh itself every 4 hours.

# We get a warning about no title on the slides; pandoc uses the 'title' of the
# slides to create a title slide; we don't want a title slide, we just want the
# contents of the slides in the slides/ directory.

slides.md: $(SLIDES.md)
	awk 'FNR==1{print ""}{print}' $(SLIDES.md) > slides.md

# awk makes sure that there's a blank line between the concatenated Markdown
# files, otherwise you have to make sure that you put a blank line at the
# beginning or end of every Markdown slide you want to include.

clean:
	rm -f slides.md slides.html
