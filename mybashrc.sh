alias cls=clear
alias ctc='xsel --clipboard --input'
alias ctv='xsel --clipboard --output'
alias histg="history | grep"
# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'"$*"'*' -ls ; }
source ~/git-completion.bash
export PATH=/home/pgabriel/.local/bin:$PATH
# https://www.writesoftwarewell.com/cdpath-easily-navigate-directories-in-the-terminal/
export CDPATH=$HOME:$HOME/projects:$HOME/projects/leetcode75
#https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-completion.html
complete -C '/usr/local/bin/aws_completer' aws
#https://stackoverflow.com/questions/39017391/how-to-make-midnight-commander-exit-to-its-current-directory
alias mc='. /usr/lib/mc/mc-wrapper.sh'
#https://github.com/drduh/YubiKey-Guide?tab=readme-ov-file#replace-agents
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpg-connect-agent updatestartuptty /bye > /dev/null
#AWS cli shortcut
alias s3ls='cmd="aws s3 ls s3://philippeg-dev-bucket/"; echo "$cmd"; history -s -- "$cmd"; eval "$cmd"'
alias ssologin="echo aws sso login | xargs -I{} sh -c 'echo + {}; {}'"
