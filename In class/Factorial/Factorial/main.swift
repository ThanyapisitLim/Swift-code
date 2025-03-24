//
//  main.swift
//  Factorial
//
//  Created by Thanyapisit on 6/2/2568 BE.
//

import Foundation

var n:Int = 0
n = Int(readLine() ?? "0")!
var result:Int = 1
for i in 1...n {
    result *= i
}
print(result)
