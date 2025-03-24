//leap year

//Input (1)
//1.ปีพ.ศ.

//Output(1)
//1.Leap year or Not a Leap year

//Process
//1.Input year
//2.Convert year(พ.ศ.) to bc (ค.ศ.)
//3.ถ้า ce หารด้วย 4 ลงตัว และหาร 100 ไม่ลงตัว หรือหาร 100 ลงตัวหาร 400 ลงตัว
//4.print Leap year
//5.นอกเหนือจากนั้น
//6.print Not a Leap year

import Foundation

var year: Int = 0
var ce: Int = 0
var status:Bool = false

print("Enter a year: ")
year = Int(readLine() ?? "0") ?? 0
ce = year - 543
print("Christ Era : \(ce)")

if (ce % 4 != 0) {
    status = false
}
else {
    if (ce % 100 != 0) {
        status = true
    }
    else {
        if (ce % 400 != 0) {
            status = false
        }
        else {
            status = true
        }
    }
}

if status == true {
    print("\(ce) is a Leap year")
}
else {
    print("\(ce) is not a Leap year")
}


//if (ce % 4 == 0 && ce % 100 != 0) || (ce % 100 == 0 && ce % 400 == 0) {
//    print("Leap Year")
//}
//else {
//    print("Not a Leap Year")
//}
