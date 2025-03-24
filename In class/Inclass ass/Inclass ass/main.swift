//
//  main.swift
//  Inclass ass
//
//  Created by Thanyapisit on 27/2/2568 BE.
//

import Foundation

var loan: Double = 0
var pay: Double = 0
let interest: Double = 0.0125
var interestPayment: Double = 0
let minimumPayment: Double = 0.05
var paymentNumber: Int = 0
var totalinterest: Double = 0


repeat {
    print("Enter loan amount : ",terminator:"")
    loan = Double(readLine() ?? "") ?? 0
} while loan > 200000

repeat {
    print("Enter pay amount : ",terminator:"")
    pay = Double(readLine() ?? "") ?? 0
} while loan * 0.05 > pay

print("| Payment Number |  Interest  |   Loan  |    Pay   |")

while loan > 0 {
    paymentNumber += 1
    interestPayment = loan * interest
    totalinterest = totalinterest + interestPayment
    loan -= pay
    if pay > loan {
        pay = loan
    }
    print(String(format: "| %-14d | %-10.2f | %-7.2f | %-8.2f |", paymentNumber, interestPayment, loan, pay))
}
print("Interst total : ",totalinterest)

//449 450 465 169 460 171 467
