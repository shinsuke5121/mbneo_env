#!/bin/bash
# SSH 設定のセットアップ
# ~/.ssh/config に BTO Windows / Pi5 NAS のエントリを追加

set -e

SSH_DIR="$HOME/.ssh"
SSH_CONFIG="$SSH_DIR/config"

mkdir -p "$SSH_DIR"
chmod 700 "$SSH_DIR"

# SSH キーペアがなければ生成
if [ ! -f "$SSH_DIR/id_ed25519" ]; then
  echo "==> SSH キーを生成..."
  ssh-keygen -t ed25519 -C "$(whoami)@macbook-neo" -f "$SSH_DIR/id_ed25519" -N ""
  echo "公開鍵 (~/.ssh/id_ed25519.pub) を各サーバの authorized_keys に追加してください"
fi

# config テンプレートを適用 (既存のものがなければコピー)
TEMPLATE_DIR="$(dirname "$0")/../config"
if [ ! -f "$SSH_CONFIG" ]; then
  echo "==> SSH config を作成..."
  cp "$TEMPLATE_DIR/ssh_config.template" "$SSH_CONFIG"
  chmod 600 "$SSH_CONFIG"
  echo "~/.ssh/config を作成しました。ホスト名・IP を編集してください。"
else
  echo "==> ~/.ssh/config は既に存在します。"
  echo "    config/ssh_config.template を参考に手動で追記してください。"
fi

echo ""
echo "Done."
