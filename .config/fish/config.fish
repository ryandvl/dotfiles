# Remove fish greeting message
set -g fish_greeting

# Commands aliases
alias "g" "git"                 # Git (https://git-scm.com/)
alias "n" "fnm"                 # NodeJS (https://nodejs.org/) with Fast Node Manager (https://github.com/Schniz/fnm)
alias "py" "python3"            # Python (https://www.python.org/)
alias "prisma" "pnpm prisma"    # Prisma (https://www.prisma.io/)

# Initialize starship (https://starship.rs/)
starship init fish | source
