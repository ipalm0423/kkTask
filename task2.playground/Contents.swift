//: Playground - noun: a place where people can play

import UIKit
import Foundation


func nDecade(n:Int) -> Int{
    var temp = n
    for (var i = n-1; i > 0; i--){
        temp = temp*i
    }
    return temp
}

func howManySameCharater(char:String , string:[String]) -> Int {
    var count = 0
    for charMatch in string{
        if char == charMatch {
            count++
        }
    }
    return count
}


//高中數學的取球問題：有n個不完全相同顏色的球排列(m1顆球是一種顏色，m2顆球是第二種顏色.....)，其排列的可能性為n!/m1!m2!m3!
func possibleNumberCount(number:String) -> Int {
    
    let stringNumber = String(number)
    let characters = stringNumber.characters.map { String($0) }
    var temp = nDecade(characters.count)
    
    //how many numbers are same
    var numberAreSame = [String:Int]()
    for char in characters{
        let count = howManySameCharater(char, string: characters)
        numberAreSame.updateValue(count, forKey: char)
    }
    
    //calculate  n!/m1!m2!m3!...
    for dic in numberAreSame {
        
        temp = temp / nDecade(dic.1)
    }
    
    return temp
}


//answer
possibleNumberCount("122")
