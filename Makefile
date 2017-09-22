htmls = $(patsubst %.md,%.html,$(wildcard *.md))

all: ${htmls}
clean:
	rm -f ${htmls}

%.html: %.md
	kramdown --template csiab.html.erb $< > $@
