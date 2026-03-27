#!/bin/bash
# ホームディレクトリにプロジェクト用フォルダ構造を作成

set -e

echo "==> ディレクトリ構造を作成..."

mkdir -p ~/Dev/projects/web
mkdir -p ~/Dev/projects/native
mkdir -p ~/Dev/projects/scripts
mkdir -p ~/Dev/work
mkdir -p ~/Dev/sandbox
mkdir -p ~/dotfiles
mkdir -p ~/Mounts/nas
mkdir -p ~/Mounts/windows

echo "==> 作成したディレクトリ:"
tree -L 3 ~/Dev ~/Mounts 2>/dev/null || find ~/Dev ~/Mounts -type d | sort

echo ""
echo "Done."
