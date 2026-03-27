#!/bin/bash
# Node.js 環境のセットアップ (fnm + pnpm + bun)

set -e

# fnm が入っていなければエラー
if ! command -v fnm &> /dev/null; then
  echo "fnm が見つかりません。先に brew install fnm を実行してください。"
  exit 1
fi

echo "==> Node.js LTS をインストール..."
fnm install --lts
fnm use lts-latest
fnm default lts-latest

NODE_VERSION=$(node -v)
NPM_VERSION=$(npm -v)
echo "Node: $NODE_VERSION / npm: $NPM_VERSION"

echo "==> pnpm のセットアップ..."
# pnpm は Brewfile でインストール済みのはず
pnpm --version

echo "==> bun をインストール..."
if ! command -v bun &> /dev/null; then
  curl -fsSL https://bun.sh/install | bash
else
  echo "bun は既にインストール済み: $(bun -v)"
fi

echo ""
echo "==> グローバルパッケージのインストール..."
pnpm add -g typescript ts-node
pnpm add -g @antfu/ni    # ni/nr/nu コマンド (npm/pnpm/bun を自動判別)

echo ""
echo "Done. Node.js 環境が整いました。"
echo "新しいプロジェクトは ~/Dev/projects/web/ 以下に作成することを推奨します。"
