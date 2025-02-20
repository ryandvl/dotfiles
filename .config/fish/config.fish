# Remove fish greeting message
set -g fish_greeting

# Commands aliases

## Git (https://git-scm.com/)
alias "g" "git"
alias "gc" "git commit -m"

## NodeJS (https://nodejs.org/)
alias "n" "fnm"                 # Fast Node Manager (https://github.com/Schniz/fnm)
alias "prisma" "pnpm prisma"    # Prisma (https://www.prisma.io/)

## Python (https://www.python.org/)
alias "py" "python3"

# Initialize starship (https://starship.rs/)
starship init fish | source
