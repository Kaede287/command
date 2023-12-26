#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 KAEDE ICHIKAWA
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "NG at Line $1"
    res=1
}

res=0

### 成人か判定 ###
out=$(年齢を入力してください: 20 | ./age.py)
[ "${out}" = "成人です" ] || ng ${LINENO}

out=$(年齢を入力してください: 18 | ./age.py)
[ "${out}" = "成人です" ] || ng ${LINENO}

### 未成年か判定 ###
out=$(年齢を入力してください: 17 | ./age.py)
[ "${out}" = "未成年です" ] || ng ${LINENO}

out=$(年齢を入力してください: 10 | ./age.py)
[ "${out}" = "未成年です" ] || ng ${LINENO}

### 文字を含むとき ###
out=$(年齢を入力してください: あ | ./age.py)
[ "$?" = 0 ] || ng ${LINENO}

### 文字と数字を含む ###
out=$(年齢を入力してください: 18a | ./age.py)
[ "$?" = 0 ] || ng ${LINENO}

### 記号を含む ###
out=$(年齢を入力してください: , | ./age.py)
[ "$?" = 0 ] || ng ${LINENO}

### 空文字　###
out=$(年齢を入力してください:   | ./age.py)
[ "$?" = 0 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

exit $res
