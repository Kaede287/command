#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 KAEDE ICHIKAWA
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "NG at Line $1"
    res=1
}

res=0

### 正しいコマンド ###
day=$(date '+%Y-%m-%d')
out=$(echo "date" | ./date.py)
[ "${out}" = "現在の日付は ${day} です" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

exit $res
