# MacBook Neo 開発環境セットアップ

MacBook Neo の開発環境構成。以下の用途を想定:

- **BTO Windows / Pi5 NAS クライアント** (SSH, RDP, SMB/NFS)
- **React / Web アプリ開発**
- **macOS / iOS アプリ開発**

## ディレクトリ構成

`~/Developer/` を起点とする (macOS / Xcode の慣例に準拠)

```
~/
├── Developer/              # 開発作業のルート
│   ├── React/              # React / Next.js など Web フロントエンド
│   ├── Mobile/             # macOS / iOS アプリ
│   ├── Lab/                # 実験・検証・サンプルコード
│   ├── Config/             # dotfiles・設定ファイルのバックアップ
│   └── Scripts/            # 自作自動化スクリプト
└── Mounts/                 # NAS・外部ストレージのマウントポイント
    ├── nas/                # Pi5 NAS (SSHFS)
    └── windows/            # Windows 共有フォルダ
```

## セットアップ手順

```bash
# 1. Homebrew インストール
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. このリポジトリをクローン
git clone <this-repo> ~/Developer/Config/mbneo_env
cd ~/Developer/Config/mbneo_env

# 3. Brewfile から一括インストール
brew bundle --file=Brewfile

# 4. ディレクトリ構造を作成
bash scripts/setup_dirs.sh

# 5. SSH 設定を適用
bash scripts/setup_ssh.sh

# 6. Node.js / Python / Claude Code をセットアップ
bash scripts/setup_node.sh

# 7. Claude Code の初回認証
claude   # ブラウザが開き Anthropic アカウントでログイン
```

## ファイル一覧

| ファイル | 説明 |
|---|---|
| `Brewfile` | Homebrew でインストールするアプリ・ツール一覧 |
| `scripts/setup_dirs.sh` | ディレクトリ構造の作成 |
| `scripts/setup_ssh.sh` | SSH config のセットアップ |
| `scripts/setup_node.sh` | Node.js / Python (mise) + Claude Code のセットアップ |
| `config/ssh_config.template` | SSH config テンプレート |
| `config/.zshrc` | zsh 設定ファイル |
| `config/.mise.toml` | mise グローバルバージョン設定 |
