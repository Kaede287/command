#!/usr/bin/python3

import datetime

while True:
    command = input()
    
    if command == "date":
        
        print("現在の日付は", datetime.date.today(), "です。")
    
    elif command == "exit":
        
        break
