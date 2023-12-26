#!/usr/bin/python3

try:

    age = int( input("年齢を入力してください: ") )

    if age >= 18:
        print("成人です")
    else:
        print("未成年です")

except:
    print("入力が正しくありません.数値を入力してください")

