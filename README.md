# wsl-op

WSLからWindowsのエクスプローラーやURLを開くまでの間に、スピナーが回ります。

## インストール方法
以下のコマンドをターミナルで実行してください。`~/.bashrc` の末尾に自動的に追加されます。
```bash
curl -sL https://raw.githubusercontent.com/shizu-na/wsl-op/main/op.sh >> ~/.bashrc && source ~/.bashrc
```

## 使い方
```bash
op .              # 現在のディレクトリをエクスプローラーで開く
op https://...    # 指定したURLをブラウザで開く
```
