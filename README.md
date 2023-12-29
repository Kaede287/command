# command 

# dateコマンド

[![test](https://github.com/Kaede287/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/Kaede287/robosys2023/actions/workflows/test.yml)

* このPythonスクリプトは, コマンドラインに"date"コマンドを入力することにより, 現在の日付や時刻を標準入力, 標準出力します.

## インストール方法
* pythonが導入された環境で, 下記のコマンドを入力してください.

```
$ git clone  https://github.com/Kaede287/command.git
```
## 実行方法

* commandディレクトリを開いてください.
```
$ cd command
```
* 下記のコマンドを入力し, ファイルがあることを確認してください.

* 入力のリダイレクト
```
$ ./date.py < nums
```

* 出力のリダイレクト
```
$ date > ans
```

* 実行権限が付与されていない場合は, 下記コマンドを入力してください.
```
$ chmod +x date.py
```

## 実行結果

入力のリダイレクト
```
現在の日付は 2023-12-29 です
```

出力のリダイレクト
```
$ cat ans
2023年 12月 29日 金曜日 15:15:48 JST
```

## テスト環境
* Ubuntu20.04

## 必要なソフトウェア
* python
        * テスト済み:3.7~3.10

## ライセンス ##
* このソフトウェアパッケージは, 3条項BSDライセンスの下, 再頒布および使用が許可されます.
* このパッケージのコードは, 下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）の一部のものを加筆し, 本人の許可を得て自身の著作としたものです.
        * [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)

©2023 Kaede Ichikawa
