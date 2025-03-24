//
//  main.swift
//  Prime Num
//
//  Created by Thanyapisit on 13/2/2568 BE.
//

import Foundation

var num:Int = 0
var prime_num:Bool = true
print("Enter number : ",terminator:"")
num = Int(readLine() ?? "0")!

for i in 2..<num {
    if num%i == 0 {
        prime_num = false
        break
    }
}

if prime_num == false {
    print("\(num) isn't prime number")
}
else {
    print("\(num) is prime number")
}
