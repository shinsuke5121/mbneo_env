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
| Xcode | iOS/macOS 開発必須 | ★★★ |

## Node.js バージョン管理

| ツール | 特徴 | 推奨度 |
|---|---|---|
| **fnm** | Rust製・高速。`.node-version`自動切替 | ★★★ |
| nvm | 老舗。シェル起動が若干遅い | ★★☆ |
| volta | npm/yarn のバージョンも管理可 | ★★☆ |

## パッケージマネージャ (Node)

| ツール | 特徴 |
|---|---|
| **pnpm** | 高速・省ディスク。モノレポ対応 |
| **bun** | 超高速。ランタイム兼用。開発用途に向く |
| npm | 標準。遅いが安定 |

## コンテナ

| ツール | 特徴 | 推奨度 |
|---|---|---|
| **OrbStack** | 軽量・高速。Docker Desktop の代替 | ★★★ |
| Docker Desktop | 公式。GUIが充実 | ★★☆ |

## リモート接続 (BTO Windows / Pi5)

### Windows (RDP)
- **Microsoft Remote Desktop** (App Store 無料) - 標準的な選択肢
- SSH ポートフォワード経由も可能

### Pi5 NAS (SSH/SFTP/SMB)
- **SSH**: `ssh pi5` (config 設定後)
- **SSHFS**: ファイルシステムとしてマウント → `~/Mounts/nas`
- **SMB**: Finder の「サーバへ接続」で `smb://pi-ip/sharename`
- **Cyberduck**: GUI で SFTP/SMB/S3 をまとめて管理
- **Tailscale**: 外出先からも同じ設定で接続できる VPN (無料枠あり)

## ウィンドウ管理

| アプリ | 特徴 | 推奨度 |
|---|---|---|
| **Rectangle Pro** | 有料版。スナップ・カスタムレイアウト | ★★★ |
| Rectangle | 無料版。基本的なスナップ操作 | ★★☆ |
| Magnet | App Store 定番。有料 | ★★☆ |

## ランチャー

| アプリ | 特徴 |
|---|---|
| **Raycast** | Spotlight 代替。拡張が豊富。AI機能内蔵 (無料枠あり) |
| Alfred | 老舗。Powerpack(有料)で強化 |

## セキュリティ・パスワード管理

| アプリ | 特徴 |
|---|---|
| **1Password** | 定番。ファミリープラン・SSH鍵管理も可 |
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
cd ~/Dev/projects/web
pnpm create next-app my-app --typescript --tailwind --app
cd my-app
code .
```
