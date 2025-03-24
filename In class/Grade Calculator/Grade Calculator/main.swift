//ให้เชียนโปรแกรม รับค่าคะแนนรวม 100 คะแนน จากนั้นคำนวณแบบอิงเกณฑ์
//86-100 A
//76-85 B
//66-75 C
//56-65 D
//<56 F

//pseudo code
//1.รับค่าคะแนนเป็น Int จาก k/d
//2.นำค่าคะแนนมาทำสอบเทียบกับเกณฑ์
//3.แสดงผล
//4.จบการทำงาน

import Foundation

print("--Grade Calculator--")

var score: Int = 0
var grade: String = ""

print("Enter your score : ")
score = Int(readLine() ?? "0")!

if score > 100 {
    grade = "Over Score than grade ERROR!!"
}
else if score >= 86 && score <= 100 {
    grade = "A"
}
else if score >= 76 && score < 86 {
   grade = "B+"
}
else if score >= 66 && score < 76 {
    grade = "B"
}
else if score >= 56 && score < 66 {
    grade = "C"
}
else if score >= 50 && score < 56 {
    grade = "C"
}
else {
    grade = "E"
}

print("Score = \(score) --> Grade = \(grade)")
