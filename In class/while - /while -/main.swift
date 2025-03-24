//
//  main.swift
//  while - 
//
//  Created by Thanyapisit on 20/2/2568 BE.
//

import Foundation

//Input var
var base:Int = 0
var divisor:Int = 0
//Output var
var result:Int = 0
var reminder:Int = 0

print("Enter base num : ",terminator: "")
base = Int(readLine() ?? "0") ?? 0

print("Enter divisor num : ",terminator: "")
divisor = Int(readLine() ?? "0") ?? 0

if divisor == 0 {
    print("Undefined")
}
else if base == 0{
    result = 0
    reminder = 0
    print("result :" ,result ,"reminder :" , reminder)
}
else if base < divisor {
    reminder = base
    result = 0
    print("result :" ,result ,"reminder :" , reminder)
}
else {
    reminder = base
    while reminder < base {
        reminder = base - divisor
        result += 1
    }
    print("result :" ,result ,"reminder :" , reminder)
}
