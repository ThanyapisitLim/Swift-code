import Foundation

var n: Int = 0
print("Enter a number: ")
n = Int(readLine()!)!

while n <= 1 {
    print("Fuck u")
    print("Enter again: ")
    n = Int(readLine()!)!
}

while n != 1 {
    if n % 2 != 0 {
        n = n * 3 + 1
    } else {
        n /= 2
    }
    print(n)
}
