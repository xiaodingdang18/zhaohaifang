//
//  main.swift
//  L01
//
//  Created by zhaohf on 16/1/19.
//  Copyright © 2016年 RW. All rights reserved.
//

import Foundation

print("Hello, World!")


var str = "Hello"
var s:String = "world"
var i:Int = 6

print(str,i)

str = str + "hello workld"

str = "\(str)... \(100) ++ \(i)"

print(str)

var arr = ["arr0","abcd",100,2.3]
print(arr)

var arr1 = []
var arr2 = [String]()

var dict = ["key":"value","age":"16"]
dict["key2"] = "7778"
print(dict)
print(dict["age"])

var arr3 = [String]()

for value in arr
{
    print(value)
}

 i = 0
while i < arr.count
{
    print(arr[i])
    i++
}

var dict2 = ["key0" : "value0", "key1":"value1"]
for (key, value) in dict2
{
    print("dict ===\(key), \(value)")
}

func sayHelllo(name:String)
{
    print("==\(name)")
}

sayHelllo("zhao")

func getNums()->(Int, Int)
{
    return(2,3)
}

let (a,b) = getNums()

print("get numbers \(a)")

var fun = sayHelllo
fun("zhangsan")

class Hi {
    func sayHi()
    {
        print("say (say hie)")
    }
}

var hi = Hi()
hi.sayHi()

class  Hello: Hi {
    var _name:String
    init(name:String)
    {
        self._name = name
    }
    override func sayHi() {
        print("over ride say hi \(self._name)")
    }
}

var hello = Hello(name: "zhf")
hello.sayHi()