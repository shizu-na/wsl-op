# wsl-op

WSL から Windows のエクスプローラーや既定ブラウザを開くための `op` コマンドです。

実行中は、処理が完了するまでスピナーを表示します。

## 対象環境

- WSL
- Bash
- Windows 側の `explorer.exe` を呼び出せる環境

## インストール

`op` をユーザー領域に配置します。

```bash
mkdir -p ~/.local/bin
curl -L https://raw.githubusercontent.com/shizu-na/wsl-op/main/op -o ~/.local/bin/op
chmod +x ~/.local/bin/op
```

`~/.local/bin` が `PATH` に含まれていない場合は、`~/.bashrc` などのシェル設定ファイルに次を追加します。

```bash
export PATH="$HOME/.local/bin:$PATH"
```

設定を反映します。

```bash
source ~/.bashrc
```

## 既存コマンドとの衝突確認

`op` は短いコマンド名のため、環境によっては既存のコマンドと名前が重なる可能性があります。

インストール前に確認する場合:

```bash
command -v op
```

何も表示されなければ、通常は未使用です。

インストール後の配置を確認する場合:

```bash
command -v op
```

次のように表示されれば、ユーザー領域に配置された `op` が使われます。

```bash
/home/your-name/.local/bin/op
```

## 使い方

現在のディレクトリを Windows のエクスプローラーで開きます。

```bash
op .
```

URL を Windows 側の既定ブラウザで開きます。

```bash
op https://example.com
```

引数を省略した場合は、現在のディレクトリを開きます。

```bash
op
```

## アンインストール

`~/.local/bin` に配置したファイルを削除します。

```bash
rm ~/.local/bin/op
```
