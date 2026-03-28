#!/bin/bash
# ランタイム環境のセットアップ (mise + pnpm + bun)
# mise が Node.js / Python などのバージョン管理を一元担当

set -e

# mise が入っていなければエラー
if ! command -v mise &> /dev/null; then
  echo "mise が見つかりません。先に brew install mise を実行してください。"
  exit 1
fi

echo "==> mise で Node.js LTS をインストール..."
mise use --global node@lts

echo "==> mise で Python 3.12 をインストール..."
mise use --global python@3.12

NODE_VERSION=$(node -v)
PYTHON_VERSION=$(python --version)
echo "Node: $NODE_VERSION / Python: $PYTHON_VERSION"

echo ""
echo "==> pnpm のセットアップ..."
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
echo "Done."
echo ""
echo "プロジェクトごとのバージョン指定例:"
echo "  cd ~/Dev/projects/web/my-app"
echo "  mise use node@22    # .mise.toml を自動生成"
echo "  mise use python@3.11"
