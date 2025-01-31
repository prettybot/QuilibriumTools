# .bash_profile

# If .bash_profile exists, bash doesn't read .profile
if [[ -f ~/.profile ]]; then
  . ~/.profile
fi

# If the shell is interactive and .bashrc exists, get the aliases and functions
if [[ $- == *i* && -f ~/.bashrc ]]; then
    . ~/.bashrc
fi

export HISTTIMEFORMAT="%d/%m/%y %T "


alias e="exit"
alias cm="ps -eo comm,pcpu --sort -pcpu | head -8; ps -eo comm,pmem --sort -pmem | head -8"
alias st='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3'
alias myip='curl icanhazip.com'
alias wttr='curl wttr.in'

neofetch


alias dpeer-count='cd ~/ceremonyclient/ && docker compose exec node grpcurl -plaintext -max-msg-sz 150000000 localhost:8337 quilibrium.node.node.pb.NodeService.GetPeerManifests | grep peerId | wc -l'
alias dnode-info='cd ~/ceremonyclient/ && docker compose exec node node -node-info && cd ~'
alias ddb-console='cd ~/ceremonyclient/ && - docker compose exec node node --db-console && cd ~'
alias dbalance='cd ~/ceremonyclient/ && docker compose exec node node -balance && cd ~'
alias dlog='cd ~/ceremonyclient/ && docker compose logs -f -n, --tail 100 && cd ~'
alias dstart='cd ~/ceremonyclient/ && docker compose up -d && cd ~'
alias drestart='cd ~/ceremonyclient/ && docker compose down && docker compose up -d && cd ~'
alias dstop='cd ~/ceremonyclient/ && docker compose down && cd ~'

alias peer-count='cd ~/ceremonyclient/node && grpcurl -plaintext -max-msg-sz 150000000 localhost:8337 quilibrium.node.node.pb.NodeService.GetPeerManifests | grep peerId | wc -l && cd ~'
alias node-info='cd ~/ceremonyclient/node && ./node-1.4.18-linux-amd64 -node-info && cd ~'
alias db-console='cd ~/ceremonyclient/node && ./node-1.4.18-linux-amd64 --db-console && cd ~'
alias balance='cd ~/ceremonyclient/node && ./node-1.4.18-linux-amd64 -balance && cd ~'
alias nlog='sudo journalctl -u ceremonyclient.service -f --no-hostname -o cat'
alias nstart='service ceremonyclient start'
alias nrestart='service ceremonyclient restart'
alias nstop='service ceremonyclient stop'