//
//  main.swift
//  ครูจ่อย
//
//  Created by Thanyapisit on 6/3/2568 BE.
//

import Foundation

var name:[String] = []
var test1:[Float] = []
var test2:[Float] = []
var test3:[Float] = []

var totalScore:[Float] = []
var grade:[String] = []

var rScore1:[Float] = []
var rScore2:[Float] = []
var rScore3:[Float] = []

for i in 0..<12 {
    print("Enter student name : ")
    let inputName:String = readLine() ?? ""
    name.append(inputName)
    
    print("Enter score 1 : ")
    let inputScore1:Float = Float(readLine() ?? "0") ?? 0
    test1.append(inputScore1)
    
    print("Enter score 2 : ")
    let inputScore2:Float = Float(readLine() ?? "0") ?? 0
    test2.append(inputScore2)
    
    print("Enter score 3 : ")
    let inputScore3:Float = Float(readLine() ?? "0") ?? 0
    test3.append(inputScore3)
}

for j in 0..<12 {
    rScore1.append(test1[j]*25/100)
    rScore2.append(test2[j]*25/100)
    rScore3.append(test3[j]*50/100)
}

for k in 0..<12 {
    totalScore.append(rScore1[k]+rScore2[k]+rScore3[k])
}

for l in 0..<12 {
    if totalScore[l] >= 85 && totalScore[l] <= 100 {
        grade.append("A")
    }
    else if totalScore[l] >= 70 && totalScore[l] <= 84.99 {
        grade.append("B")
    }
    else if totalScore[l] >= 55 && totalScore[l] <= 69.99 {
        grade.append("C")
    }
    else if totalScore[l] >= 40 && totalScore[l] <= 49.99{
        grade.append("D")
    }
    else {
        grade.append("E")
    }
}

print("-")
print("No.\tName\tScore 1\tScore 2\tScore 3\tTotal Score\tGrade")
print("--------------------------------------------------------")
for m in 0..<12 {
    print("\(m+1)" ,terminator: "\t\t")
    print("\(name[m])" ,terminator: "\t\t")
    print("\(rScore1[m])" ,terminator: "\t\t")
    print("\(rScore2[m])" ,terminator: "\t\t")
    print("\(rScore3[m])" ,terminator: "\t\t")
    print("\(totalScore[m])" ,terminator: "\t\t")
    print("\(grade[m])" ,terminator: "\t\t")
    print("")
}
