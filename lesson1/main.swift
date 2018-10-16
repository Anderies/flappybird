//
//  main.swift
//  lesson1
//
//  Created by apple on 2018/3/16.
//  Copyright © 2018年 xiaozhuang. All rights reserved.
//

import Foundation

print("Hello, World!")
//1.declare
let a = 1
var b:Float = 2
//a = a + 1
b = b + 1.3
var str = "Welcome to 204"
var str1:String = "iOS programming"
print(str + str1)
print(b)
print("b = \(b)")
print(b, terminator:" ")
print(" = ddddd")
//2.array
var arry = [1,2,4,a]
arry[0] =  arry[1] + 3
print(arry[2])
print(arry.last!)
//3.diction, key:value
var dict1 = ["name":"Maxwell","age":"20","address":"204"]
print(dict1["name"]!)
//4.loop
for i in 0..<10{
    arry.append(i)
}
print(arry)
for aa in arry{
    print(aa+10)
}
for (key, value) in dict1{
    print("key = \(key), value = \(value)")
}
var j = 0
while j<10 {
    print(j)
    j = j + 1
}
//if
if j <= 15{
    print("ddddddd")
}else{
    print("wwwwwww")
}
// 0 3 6 9 12 15 18 21 24 27 ...
var jj = 1
for i in 0..<100{
    
    if i%3 == 0{
        print(i,terminator:" ")
        if jj % 5 == 0 {
            print()
        }
        jj = jj + 1
    }
}
//5function
//5.1 void function
func myPrint(name:String){
    print(name,terminator:"")
}
myPrint(name: "theres no new line here")
myPrint(name: ",append it...")
//5.2 return a value
func getValue(value1:Int) ->Int {
    return value1*2
}
var a2 = getValue(value1: 4)
print(a2)
//5.3 return n value
func getValues(v1:Int,v2:Int) -> (Int,Int,Int){
    return (v1+10,v2+v1,v1*v2)
}
var (x1,x2,x3) = getValues(v1: 1, v2: 2)
print("x1=\(x1).x2=\(x2),x3=\(x3)")

//Ex.
//1.function sort 2
func getsort2(v1:Int,v2:Int)->(Int,Int){
    if v1>v2{
        return (v2,v1)
    }else{
        return (v1,v2)
    }
}
//2.function sort 3
func getsort3(y1:Int,y2:Int,y3:Int)->(Int,Int,Int){
    let (x1,x2) = getsort2(v1: y1, v2: y2)
    if y3 > x2{
        return (x1,x2,y3)
    }else{
        if y3>x1{
            return(x1,y3,x2)
        }else{
            return(y3,x1,x2)
        }
    }
}
var(xx1,xx2,xx3) = getsort3(y1: 3,y2:10, y3:5)
print("\(xx1),\(xx2),\(xx3)")

