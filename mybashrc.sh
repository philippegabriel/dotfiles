alias cls=clear
alias ctc='xsel --clipboard --input'
alias ctv='xsel --clipboard --output'
alias histg="history | grep"
# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'"$*"'*' -ls ; }

