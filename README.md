## 環境ツールコード
ハードの変更時にも活用できるコードを置く。

- `docker-node`  
Nodeによるフロント開発環境。

- `docker-python`  
`anaconda3:2021.05-amazonlinux`をベースにしたPython/AWS開発環境。  
※AWS CLIは`pip`により取得することで文字コードの影響を抑えている。

- `guthub-status`  
プロンプトにブランチ名と作業ツリーの状態を表示するスクリプト。
.bashrcに下記のコマンドを記述することで[リンク](https://tm.root-n.com/unix:command:git:bash_prompt)のような結果が期待できる。

```bash
 export GIT_PS1_SHOWDIRTYSTATE=true
 source /usr/local/etc/bash_completion.d/git-prompt.sh
 source /usr/local/etc/bash_completion.d/git-completion.bash
 
 #default:cyan / root:red
 if [ $UID -eq 0 ]; then
   PS1='\[\033[36m\]\h\[\033[00m\]:\[\033[01m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\\$ '
 else
   PS1='\[\033[36m\]\h\[\033[00m\]:\[\033[01m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\\$ '
 fi
```

## 作成日
2021.10.11...Ver1.0
