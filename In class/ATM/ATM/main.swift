//input (1 ตัว)
//1. จำนวนเงิน

//output (9 ตัว)
//1.แบงค์ 1000
//2.แบงค์ 500
//3.แบงค์ 100
//4.แบงค์ 50
//5.แบงค์ 20
//6.เหรียญ 10
//7.เหรียญ 5
//8.เหรียญ 2
//9.เหรียญ 1

//pseudo code
//1.รับค่าจำนวนเงิน
//2.หาแบงค์ 1000 = money/1000
//3.หาเศษเหลือ 1000 คือ r1000 = money%1000
//4.หาแบงค์ 500 = r1000/500
//5.หาเศษเหลือ 500 คือ r500 = r1000%500
//6.หาแบงค์ 100 = r500/100
//7.หาเศษเหลือ 100 คือ r100 = r500%100
//8.หาแบงค์ 50 = r100/50
//9.หาเศษเหลือ 50 คือ r50 = r100%50
//10.หาแบงค์ 20 = r50/20
//11.หาเศษเหลือ 20 คือ r20 = r50%20
//12.หาเหรียญ 10 = r20/10
//13.หาเศษเหลือ 10 คือ r10 = r20%10
//14.หาเหรียญ 5 = r10/5
//15.หาเศษเหลือ 5 คือ r5= r10%5
//16.หาเหรียญ 2 = r5/2
//17.หาเศษเหลือ 2 คือ r2 = r5%2
//18.หาเหรียญ 1 = r2/1

import Foundation
//input var
var money:Int = 0
//output var
var b1000:Int = 0
var b500:Int = 0
var b100:Int = 0
var b50:Int = 0
var b20:Int = 0
var e10:Int = 0
var e5:Int = 0
var e2:Int = 0
var e1:Int = 0
//process var
var r1000:Int = 0
var r500:Int = 0
var r100:Int = 0
var r50:Int = 0
var r20:Int = 0
var r10:Int = 0
var r5:Int = 0
var r2:Int = 0

print("Please enter the amount :")
money = Int(readLine() ?? "0") ?? 0

b1000 = money/1000
r1000 = money%1000
b500 = r1000/500
r500 = r1000%500
b100 = r500/100
r100 = r500%100
b50 = r100/50
r50 = r100%50
b20 = r50/20
r20 = r50%20
e10 = r20/10
r10 = r20%10
e5 = r10/5
r5 = r10%5
e2 = r5/2
r2 = r5%2
e1 = r2/1

print("<--Resule-->")
print("Bank 1000 : \(b1000)")
print("Bank 500 : \(b500)")
print("Bank 100 : \(b100)")
print("Bank 50 : \(b50)")
print("Bank 20 : \(b20)")
print("Coin 10 : \(e10)")
print("Coin 5 : \(e5)")
print("Coin 2 : \(e2)")
print("Coin 1 : \(e1)")
