GITHUB_REMOTE	=	origin
GITHUB_PUSH_BRANCHS	=	master
SITE_BUILD_FP = _site

.PHONY: help

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  push         Push branches to main remote"
	@echo "  clean        Clean site"
	@echo "  build        Build site"

push:
	@git push $(GITHUB_REMOTE) $(GITHUB_PUSH_BRANCHS)

clean:
	@rm -rvf $(SITE_BUILD_FP)
	@mkdir $(SITE_BUILD_FP)

build:	clean
	@cp -av css/ $(SITE_BUILD_FP)
	@cp -v index.html $(SITE_BUILD_FP)
