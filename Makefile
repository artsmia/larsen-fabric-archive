removePhpExtensions:
	sudo rename 's/.php//' */*.php*

rewritePhpLinks:
	ag -l '.php' | grep -v Makefile | while read file; do \
		sudo sed -i 's/.php//g' $$file; \
	   done
