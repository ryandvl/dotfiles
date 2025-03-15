if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Remove fish greeting message
set -g fish_greeting

# Commands aliases

## Git (https://git-scm.com/)
alias g git
alias gc "git commit -m"
alias gac "git add . && git commit -m"

## NodeJS (https://nodejs.org/)
alias nvm fnm # Fast Node Manager (https://github.com/Schniz/fnm)
alias prisma "pnpm prisma" # Prisma (https://www.prisma.io/)

## Python (https://www.python.org/)
alias py python3

## Neovim (https://neovim.io/)
alias n nvim

# Initialize starship (https://starship.rs/)
starship init fish | source
