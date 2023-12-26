#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 KAEDE ICHIKAWA
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "NG at Line $1"
    res=1
}

res=0

### 成人か判定 ###
out=$(echo 18| ./age.py)
expected=": 成人です"
[ "${out}" = "${expected}" ] || ng ${LINENO}

### 未成年か判定 ###
out=$(echo 17| ./age.py )
expected=": 未成年です"
[ "${out}" = "${expected}" ] || ng ${LINENO}

### 文字を含むとき ###
out=$(echo あ| ./age.py)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

### 空文字　###
out=$(echo  | ./age.py)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

exit $res
