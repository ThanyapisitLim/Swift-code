//
//  main.swift
//  น้ำประปาก้าวหน้า
//
//  Created by Thanyapisit on 6/2/2568 BE.
//

import Foundation

print("Hello, World!")

//Process var
let unit0_10:Float = 10.20
let unit11_20:Float = 16.00
let unit21_30:Float = 19.00
let unit31_50:Float = 21.20
let unit51_80:Float = 23.00
let unit81_100:Float = 24.00
let unit101_300:Float = 27.40
let unit301_1000:Float = 27.50
let unit1001_2000:Float = 27.60
let unit2001_3000:Float = 27.80
let unitOver3000:Float = 28.00

let vat_rate:Float = 0.07

let max0_10:Float = 102.00
let max11_20:Float = 160.00
let max21_30:Float = 190.00
let max31_50:Float = 424.00
let max51_80:Float = 690.00
let max81_100:Float = 480
let max101_300:Float = 5480.00
let max301_1000:Float = 19250.00
let max1001_2000:Float = 27600.00
let max2001_3000:Float = 27800.00

//Input var
var unit:Int = 0
var address:String = ""
var meter_number:String = ""

//Output var
var price:Float = 0
var vat_price:Float = 0
var total_price:Float = 0

//Input
print("Enter meter number : ")
meter_number = readLine() ?? ""

print("Enter unit : ")
unit = Int(readLine() ?? "0")!

print("Enter address : ")
address = readLine() ?? ""

if unit > 0 && unit <= 10 {
    price = Float(unit)*unit0_10
}
else if unit > 11 && unit <= 20 {
    price = (Float(unit)-10)*unit11_20
    price = price+max0_10
}
else if unit > 21 && unit <= 30 {
    price = (Float(unit)-20)*unit21_30
    price = price+max0_10+max11_20
}
else if unit > 31 && unit <= 50 {
    price = (Float(unit)-30)*unit31_50
    price = price+max0_10+max11_20+max21_30
}
else if unit > 51 && unit <= 80 {
    price = (Float(unit)-50)*unit51_80
    price = price+max0_10+max11_20+max21_30+max31_50
}
else if unit > 81 && unit <= 100 {
    price = (Float(unit)-80)*unit81_100
    price = price+max0_10+max11_20+max21_30+max31_50+max51_80
}
else if unit > 100 && unit <= 300 {
    price = (Float(unit)-100)*unit101_300
    price = price+max0_10+max11_20+max21_30+max31_50+max51_80+max81_100
}
else if unit > 300 && unit <= 1000 {
    price = (Float(unit)-300)*unit301_1000
    price = price+max0_10+max11_20+max21_30+max31_50+max51_80+max81_100+max101_300
}
else if unit > 1000 && unit <= 2000 {
    price = (Float(unit)-1000)*unit1001_2000
    price = price+max0_10+max11_20+max21_30+max31_50+max51_80+max81_100+max101_300+max301_1000
}
else if unit > 2000 && unit <= 3000{
    price = (Float(unit)-2000)*unit2001_3000
    price = price+max0_10+max11_20+max21_30+max31_50+max51_80+max81_100+max101_300+max301_1000+max1001_2000
}
else if unit > 3000{
    price = (Float(unit)-3000)*unitOver3000
    price = price+max0_10+max11_20+max21_30+max31_50+max51_80+max81_100+max101_300+max301_1000+max1001_2000+max1001_2000+max2001_3000
}
