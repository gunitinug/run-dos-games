# Run a game from ~/my-dos-games folder

# Show list of games to run
echo Here are list of games to run:
ls *.sh | grep -v menu.sh | sed = | sed 'N;s/\n/\. /'
echo -n "Enter the number: "

read choice

# Get upper
upper="$(ls *.sh | grep -v menu.sh | wc -l)"

if [[ "$choice" =~ ^[1-$upper]$ ]]; then
	bash "$(ls *.sh | grep -v menu.sh | awk -v c="$choice" 'NR==c')"
else
	echo Wrong choice!
fi
