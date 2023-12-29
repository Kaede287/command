#!/usr/bin/python3
#SPDX-FileCopyrightText: 2023 Kaede Ichikawa
#SPDX-License-Identifier: BSD-3-Clause

import datetime

while True:
    
    command = input()
    
    if command == "date":
        
        print("現在の日付は", datetime.date.today(), "です")
        
        break
