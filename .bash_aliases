# List commands
alias l="ls --color=auto"
alias la="ls -a --color=auto"
alias ll="ls -lhaG --color=auto"

# Clear
alias cs="clear"

# Change Directories
alias home="cd ~"
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias .1="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."

# Search
alias hg="history | grep "			# Search command line history

# HTTP Servers
alias phs="python -m SimpleHTTPServer "		# Run Python3 HTTP server
alias phs3="python -m http.server "		# Run Python3 HTTP server

# Networking
alias myip="curl ipinfo.io && echo -e '\n'"	# Show my IP info
alias rl="nc -nlvp "				# Run tcp listener
alias speedtest="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -"