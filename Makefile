# emacs tags
.PHONY: TAGS
TAGS:
	find . -type file -name '*.yaml' -print0 | xargs -0 -o etags
