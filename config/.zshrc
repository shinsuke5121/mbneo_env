# ~/.zshrc - MacBook Neo

# ----------------------------------------
# Homebrew (Apple Silicon)
# ----------------------------------------
eval "$(/opt/homebrew/bin/brew shellenv)"

# ----------------------------------------
# fnm (Node.js バージョン管理)
# ----------------------------------------
eval "$(fnm env --use-on-cd --shell zsh)"

# ----------------------------------------
# starship プロンプト
# ----------------------------------------
eval "$(starship init zsh)"

# ----------------------------------------
# zsh プラグイン
# ----------------------------------------
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ----------------------------------------
# fzf
# ----------------------------------------
source <(fzf --zsh)

# ----------------------------------------
# エイリアス - 基本
# ----------------------------------------
alias ls='eza --icons'
alias ll='eza -lah --icons --git'
alias lt='eza --tree --icons -L 2'
alias cat='bat --paging=never'
alias grep='rg'
alias find='fd'

# ----------------------------------------
# エイリアス - Git
# ----------------------------------------
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'

# ----------------------------------------
# エイリアス - 開発ナビゲーション
# ----------------------------------------
alias dev='cd ~/Dev'
alias proj='cd ~/Dev/projects'
alias sandbox='cd ~/Dev/sandbox'

# ----------------------------------------
# エイリアス - Pi5 NAS マウント
# ----------------------------------------
alias mount-nas='sshfs pi5:/mnt/data ~/Mounts/nas -o reconnect,follow_symlinks,defer_permissions'
alias umount-nas='diskutil unmount ~/Mounts/nas'
alias nas='cd ~/Mounts/nas'

# Pi5 への rsync バックアップ例
# alias backup-dev='rsync -avz --progress ~/Dev/ pi5:/mnt/data/backups/mbneo/Dev/'

# ----------------------------------------
# エイリアス - BTO Windows
# ----------------------------------------
# Windows の SMB 共有をマウント
# alias mount-win='open smb://192.168.x.x/ShareName'
# SSH ポートフォワード経由で RDP
# alias rdp-win='ssh -L 3389:localhost:3389 bto-win -N & sleep 1 && open rdp://localhost'

# ----------------------------------------
# pnpm
# ----------------------------------------
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# ----------------------------------------
# bun
# ----------------------------------------
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# ----------------------------------------
# 環境変数
# ----------------------------------------
export EDITOR="cursor --wait"
# export EDITOR="code --wait"  # VS Code の場合

# ----------------------------------------
# PATH
# ----------------------------------------
export PATH="/opt/homebrew/opt/python@3.12/libexec/bin:$PATH"
