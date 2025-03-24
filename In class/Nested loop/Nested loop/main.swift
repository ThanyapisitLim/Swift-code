//
//  main.swift
//  Nested loop
//
//  Created by Thanyapisit on 13/2/2568 BE.
//

import Foundation

print("-- ลูกเต๋า --")
//var player score
var player1Score:Int = 0
var player2Score:Int = 0
var player3Score:Int = 0
var player4Score:Int = 0
var player5Score:Int = 0
//var process
var dice:Int = 0
var most:Int = 0
var arr:[Int] = []

for i in 1...5 {
    print("Player \(i)")
    print("Press any key to random :",terminator:"")
    for _ in 1...3 {
        _ = readLine()
        dice = Int.random(in: 1...6)
        print(": ",dice ,terminator:"")
        arr.append(dice)
        most = arr.max() ?? 0
        if i == 1 {
            player1Score += dice
        }
        else if i == 2 {
            player2Score += dice
        }
        else if i == 3 {
            player3Score += dice
        }
        else if i == 4 {
            player4Score += dice
        }
        else {
            player5Score += dice
        }
    }
    print("")
    print("Most : " , most)
    arr.removeLast(3)
    if i == 1 {
        print("Sum : \(player1Score)")
    }
    else if i == 2 {
        print("Sum : \(player2Score)")
    }
    else if i == 3 {
        print("Sum : \(player3Score)")
    }
    else if i == 4 {
        print("Sum : \(player4Score)")
    }
    else {
        print("Sum : \(player5Score)")
    }
    print("")
}

//Output
if player1Score > player2Score && player1Score > player3Score && player1Score > player4Score && player1Score > player5Score {
    print("Player 1 Win!!!")
}
else if player2Score > player1Score && player2Score > player3Score && player2Score > player4Score && player2Score > player5Score {
    print("Player 2 Win!!!")
}
else if player3Score > player1Score && player3Score > player2Score && player3Score > player4Score && player3Score > player5Score {
    print("Player 3 Win!!!")
}
else if player4Score > player1Score && player4Score > player2Score && player4Score > player3Score && player4Score > player5Score {
    print("Player 4 Win!!!")
}
else if player5Score > player1Score && player5Score > player2Score && player5Score > player3Score && player5Score > player4Score {
    print("Player 5 Win!!!")
}
else if player1Score == player2Score && player1Score == player3Score && player1Score == player4Score && player1Score == player5Score {
    print("Tie Game!!!")
}
else if player1Score == player2Score && player1Score > player3Score && player1Score > player4Score && player1Score > player5Score {
    print("Player 1 and Player 2 Win!!!")
}
