#!/bin/bash
# ホームディレクトリにプロジェクト用フォルダ構造を作成
# ~/Developer/ を起点とする (macOS / Xcode の慣例に準拠)

set -e

echo "==> ディレクトリ構造を作成..."

mkdir -p ~/Developer/React      # Web フロントエンド (React / Next.js)
mkdir -p ~/Developer/Mobile     # iOS / macOS アプリ
mkdir -p ~/Developer/Lab        # 実験・検証・サンプルコード
mkdir -p ~/Developer/Config     # dotfiles・設定ファイルのバックアップ
mkdir -p ~/Developer/Scripts    # 自作自動化スクリプト
mkdir -p ~/Mounts/nas           # Pi5 NAS マウントポイント
mkdir -p ~/Mounts/windows       # Windows 共有フォルダ

echo "==> 作成したディレクトリ:"
tree -L 2 ~/Developer ~/Mounts 2>/dev/null || find ~/Developer ~/Mounts -type d | sort

echo ""
echo "Done."
