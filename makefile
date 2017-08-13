export TZ=America/Los_Angeles
date_var=date +'%F %R %Z'


README.md:guessinggame.sh
	touch README.md
	echo date_var
	echo '# Final project for the Unix Workbench course' > README.md
	echo "- created on:  $$(date +'%F %R %Z')"  >> README.md
	unset TZ
	echo "- number of lines in guessinggame.sh:  $$(cat guessinggame.sh | wc -l ) "  >> README.md
