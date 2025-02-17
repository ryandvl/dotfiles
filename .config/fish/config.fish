# Remove fish greeting message
set -g fish_greeting

# Aliases
alias "g" "git"
alias "py" "python3"
alias "prisma" "pnpm prisma"

# Initialize starship (https://starship.rs/)
starship init fish | source