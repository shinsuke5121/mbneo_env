# MacBook Neo - Brewfile
# brew bundle --file=Brewfile で一括インストール

# ----------------------------------------
# 基盤ツール
# ----------------------------------------
brew "git"
brew "gh"                    # GitHub CLI
brew "mas"                   # Mac App Store CLI

# ----------------------------------------
# ターミナル・シェル環境
# ----------------------------------------
cask "warp"                  # AI ターミナル (alt: iTerm2)
# cask "iterm2"              # 従来型ターミナル (どちらか選択)
brew "zsh-autosuggestions"
brew "zsh-syntax-highlighting"
brew "starship"              # プロンプトカスタマイズ
brew "fzf"                   # ファジーファインダー
brew "bat"                   # cat の強化版
brew "eza"                   # ls の強化版
brew "fd"                    # find の強化版
brew "ripgrep"               # grep の強化版
brew "jq"                    # JSON 処理

# ----------------------------------------
# 開発エディタ・IDE
# ----------------------------------------
cask "cursor"                # AI コードエディタ (VS Code ベース)
# cask "visual-studio-code"  # VS Code (どちらか選択)
# cask "xcode"               # iOS / macOS 開発が必要になったときに追加

# ----------------------------------------
# ランタイムバージョン管理 (Node / Python / Ruby / Go など一元管理)
# ----------------------------------------
brew "mise"                  # polyglot バージョンマネージャ (asdf 互換・fnm/pyenv 代替)
brew "pnpm"                  # 高速パッケージマネージャ
# bun・Claude Code は scripts/setup_node.sh で Node インストール後にセットアップ
# Claude Code: npm install -g @anthropic-ai/claude-code

# ----------------------------------------
# バックエンド・その他言語
# ----------------------------------------
brew "uv"                    # Python パッケージ管理 (pip の代替)
brew "rustup"                # Rust (mise でも管理可能だが rustup が安定)

# ----------------------------------------
# コンテナ・仮想化
# ----------------------------------------
cask "orbstack"              # Docker 互換。8GB RAM 環境では Docker Desktop より大幅に軽量

# ----------------------------------------
# リモート接続 (BTO Windows / Pi5 NAS クライアント)
# ----------------------------------------
cask "microsoft-remote-desktop"  # RDP クライアント (Windows) - 標準的な操作向け
cask "parsec"                # 低遅延リモートデスクトップ。Windows のスペックを活かした描画に優れる
brew "openssh"               # SSH クライアント
cask "cyberduck"             # SFTP / SMB / S3 ファイル転送 (無料)
# cask "forklift"            # 有料だが高機能。NAS への大量ファイル転送に向く
brew "sshfs"                 # SFTP をファイルシステムとしてマウント
cask "macfuse"               # sshfs の依存 (旧: osxfuse)

# ----------------------------------------
# ネットワーク・セキュリティ
# ----------------------------------------
brew "mosh"                  # モバイル回線でも安定した SSH
brew "nmap"                  # ネットワークスキャン
brew "tailscale"             # ゼロコンフィグ VPN (Windows・Pi5 と連携)
cask "wireguard"             # WireGuard VPN クライアント

# ----------------------------------------
# 生産性・ユーティリティ
# ----------------------------------------
cask "raycast"               # Spotlight 代替ランチャー
cask "rectangle-pro"         # ウィンドウ管理 (alt: alt・Magnet)
# cask "alt"                 # 無料のウィンドウ管理 (どちらか選択)
cask "1password"             # パスワードマネージャ
# cask "bitwarden"           # 無料の代替
cask "hiddenbar"             # メニューバー整理
cask "stats"                 # システムリソースモニタ (無料)
cask "shottr"                # スクリーンショット・注釈ツール。エビデンス残しに優秀 (無料)
cask "cleanmymac"            # システムクリーナ (有料)

# ----------------------------------------
# ブラウザ
# ----------------------------------------
cask "google-chrome"
cask "firefox"               # 開発・テスト用

# ----------------------------------------
# デザイン・プロトタイプ
# ----------------------------------------
cask "figma"

# ----------------------------------------
# コミュニケーション
# ----------------------------------------
cask "slack"
cask "discord"

# ----------------------------------------
# Mac App Store アプリ (mas)
# ----------------------------------------
# mas "Xcode", id: 497799835          # Xcode (Homebrewより安定)
mas "Lungo", id: 1276293613            # スリープ防止
mas "Amphetamine", id: 937984704       # スリープ防止 (alt)
