# MacBook Neo 開発環境セットアップ

MacBook Neo の開発環境構成。以下の用途を想定:

- **BTO Windows / Pi5 NAS クライアント** (SSH, RDP, SMB/NFS)
- **React / Web アプリ開発**
- **macOS / iOS アプリ開発**

## ディレクトリ構成

```
~/
├── Dev/                    # 開発作業のルート
│   ├── projects/           # 個人プロジェクト
│   │   ├── web/            # React / Next.js など Web 系
│   │   ├── native/         # macOS / iOS アプリ
│   │   └── scripts/        # 自動化スクリプト集
│   ├── work/               # 仕事用プロジェクト
│   └── sandbox/            # 実験・試作
├── dotfiles/               # 設定ファイル管理 (Git管理推奨)
│   ├── .zshrc
│   ├── .gitconfig
│   └── ssh/
│       └── config
└── Mounts/                 # NAS・外部ストレージのマウントポイント
    ├── nas/                # Pi5 NAS
    └── windows/            # Windows 共有フォルダ
```

## セットアップ手順

```bash
# 1. Homebrew インストール
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. このリポジトリをクローン
git clone <this-repo> ~/dotfiles/mbneo_env
cd ~/dotfiles/mbneo_env

# 3. Brewfile から一括インストール
brew bundle --file=Brewfile

# 4. ディレクトリ構造を作成
bash scripts/setup_dirs.sh

# 5. SSH 設定を適用
bash scripts/setup_ssh.sh
```

## ファイル一覧

| ファイル | 説明 |
|---|---|
| `Brewfile` | Homebrew でインストールするアプリ・ツール一覧 |
| `scripts/setup_dirs.sh` | ディレクトリ構造の作成 |
| `scripts/setup_ssh.sh` | SSH config のセットアップ |
| `scripts/setup_node.sh` | Node.js 環境 (fnm) のセットアップ |
| `config/ssh_config.template` | SSH config テンプレート |
| `config/.zshrc` | zsh 設定ファイル |
