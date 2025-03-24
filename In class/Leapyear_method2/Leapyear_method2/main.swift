//
//  main.swift
//  Leapyear_method2
//
//  Created by Thanyapisit on 30/1/2568 BE.
//

import Foundation

var be_year: Int = 0
var ce_year: Int = 0
var status : Bool = false

print("Enter Year in BE : ")
be_year = Int(readLine() ?? "0")!

ce_year = be_year - 543

if (ce_year%4 == 0 && ce_year%100 != 0) || (ce_year%4 == 0 && ce_year%100 == 0 && ce_year%400 == 0) {
    status = true
}
else {
    status = false
}

if status {
    print("\(be_year) is a Leap year")
}

else {
    print("\(be_year) is not a Leap year")
}
