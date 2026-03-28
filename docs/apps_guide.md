# アプリ・ツール選定ガイド

## ターミナル

| アプリ | 特徴 | 推奨度 |
|---|---|---|
| **Warp** | AI補完・コマンド検索内蔵。モダンUI | ★★★ |
| iTerm2 | 老舗。カスタマイズ性が高い | ★★☆ |
| Ghostty | 新興。高速・軽量 | ★★☆ |

## エディタ

| アプリ | 特徴 | 推奨度 |
|---|---|---|
| **Cursor** | VS Code ベースのAI統合エディタ。Claude対応 | ★★★ |
| VS Code | 最も普及。拡張が豊富 | ★★★ |
| Zed | Rust製・高速。マルチプレイヤー機能あり | ★★☆ |
| Xcode | iOS/macOS 開発が必要になったときに追加 | — |

## バージョン管理 (ランタイム)

| ツール | 特徴 | 推奨度 |
|---|---|---|
| **mise** | Node/Python/Go など全言語を一元管理。Rust製で高速 | ★★★ |
| fnm | Node.js 専用。軽量だが多言語対応なし | ★★☆ |
| asdf | mise の前身。mise の方が高速 | ★☆☆ |

## パッケージマネージャ (Node)

| ツール | 特徴 |
|---|---|
| **pnpm** | 高速・省ディスク。モノレポ対応 |
| **bun** | 超高速。ランタイム兼用。開発用途に向く |
| npm | 標準。遅いが安定 |

## コンテナ (8GB RAM 環境での選択は重要)

| ツール | 特徴 | 推奨度 |
|---|---|---|
| **OrbStack** | 軽量・高速。アイドル時のメモリ使用量が Docker Desktop の数分の1 | ★★★ |
| Docker Desktop | 公式。GUIが充実するが重い。8GB RAM には不向き | ★☆☆ |

> **8GB RAM の場合**: Docker Desktop は常時 1〜2GB 以上消費するため OrbStack 一択。

## リモート接続 (BTO Windows)

| ツール | 特徴 | 向いている用途 |
|---|---|---|
| **Microsoft Remote Desktop** | 無料・安定。標準的な RDP | テキスト作業・ファイル操作 |
| **Parsec** | 低遅延・高品質な映像転送 | 描画が多い作業・Windows のスペックを活かしたい場合 |

> **使い分け**: 普段のファイル操作や開発は Microsoft Remote Desktop、重い処理や映像品質を求める場面は Parsec。

## リモート接続 (Pi5 NAS)

| 方法 | 特徴 |
|---|---|
| **SSH** (`ssh pi5`) | コマンド操作・スクリプト実行 |
| **SSHFS** | `~/Mounts/nas` にファイルシステムとしてマウント |
| **SMB** (Finder → サーバへ接続) | Finder から直接アクセス。簡便 |
| **Cyberduck** | GUI で SFTP/SMB/S3 をまとめて管理 (無料) |
| **Forklift** | 大量ファイル転送・同期に向く (有料) |
| **Tailscale** | 外出先からも同じ設定で接続できる VPN (無料枠あり) |

## スクリーンショット

| アプリ | 特徴 | 推奨度 |
|---|---|---|
| **Shottr** | 注釈・OCR・ピクセル計測。無料で高機能 | ★★★ |
| CleanShot X | 有料だが最高品質。スクロールキャプチャ対応 | ★★☆ |
| macOS 標準 | `Cmd+Shift+4` で十分な場面も多い | ★★☆ |

## ウィンドウ管理

| アプリ | 特徴 | 推奨度 |
|---|---|---|
| **Rectangle** | 無料。基本的なスナップ操作で十分 | ★★★ |
| Rectangle Pro | 有料版。カスタムレイアウト追加 | ★★☆ |
| Magnet | App Store 定番。有料 | ★★☆ |

## ランチャー

| アプリ | 特徴 |
|---|---|
| **Raycast** | Spotlight 代替。拡張が豊富。クリップボード履歴・ウィンドウ管理も内包。AI機能内蔵 |
| Alfred | 老舗。Powerpack(有料)で強化 |

## セキュリティ・パスワード管理

| アプリ | 特徴 |
|---|---|
| **1Password** | 定番。SSH鍵管理・ファミリープランあり |
| Bitwarden | 無料・オープンソース |

## メニューバー

| アプリ | 特徴 |
|---|---|
| **Stats** | CPU/メモリ/ネットワーク表示。無料 |
| HiddenBar | メニューバーアイコンを整理。無料 |
| Bartender | 高機能。有料 |

---

## React / Web 開発の推奨スタック

```
フレームワーク : Next.js (App Router)
スタイリング   : Tailwind CSS + shadcn/ui
状態管理       : Zustand / Jotai (軽量) or TanStack Query (サーバ状態)
フォーム       : React Hook Form + Zod
テスト         : Vitest + Testing Library
デプロイ       : Vercel (最も簡単) / Cloudflare Pages
```

### プロジェクト作成例
```bash
cd ~/Developer/React
pnpm create next-app my-app --typescript --tailwind --app
cd my-app
cursor .
```
