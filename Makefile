# targets that aren't filenames
.PHONY: all clean deploy build serve

all: build


JEKYLL=bundler exec jekyll


build:
	$(JEKYLL) build

# you can configure these at the shell, e.g.:
# SERVE_PORT=5001 make serve
SERVE_HOST ?= 127.0.0.1
SERVE_PORT ?= 5000

serve:
	$(JEKYLL) serve --port $(SERVE_PORT) --host $(SERVE_HOST)

clean:
	$(RM) -r _site

DEPLOY_PATH ?= mjk76@afsconnect1.njit.edu:/afs/cad/u/m/j/mjk76/public_html/
RSYNC := rsync --compress --recursive --checksum --itemize-changes --delete \
	     --perms --owner --group --times -e ssh

deploy: clean build
	$(RSYNC) _site/ $(DEPLOY_PATH)
