#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 KAEDE ICHIKAWA
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "NG at Line $1"
    res=1
}

res=0

### 成人か判定 ###
out=$(echo "20" | ./age.py)
[ "${out}" = "年齢を入力してください: 成人です" ] || ng ${LINENO}

### 未成年か判定 ###
out=$(echo "17" | ./age.py)
[ "${out}" = "年齢を入力してください: 未成年です" ] || ng ${LINENO}



[ "$res" = 0 ] && echo OK

exit $res
