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

# TODO: make this more sophisticated so that it can handle more than one semester
# TODO: make this automatically build
MV490SP23=cp -r ../cs-490-website/_site _site/teaching/cs490-sp23

cs490-sp23:
	$(MV490SP23)

DEPLOY_PATH ?= mjk76@afsconnect1.njit.edu:/afs/cad/u/m/j/mjk76/public_html/
RSYNC := rsync --compress --recursive --checksum --itemize-changes --delete \
	     --perms --owner --group --times -e ssh

deploy: clean build cs490-sp23
	$(RSYNC) _site/ $(DEPLOY_PATH)
