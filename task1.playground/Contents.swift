//: Playground - noun: a place where people can play

import UIKit
import Foundation



public func exp(under:Int, top:Int) -> Int{
    if top == 0{
        return 1
    }
    var temp = under
    for (var i = 1; i < top; i++){
        temp = temp * under
    }
    return temp
}
public func solution(N : Int) -> Int {
    
    var count = N
    var sumArray:[Int] = []
    
    for (var p = 0; p <= count; p++){
        for (var q = 0; q <= count;q++) {
            let sum = exp(2, top:p)*exp(3, top:q)
            if sumArray.indexOf(sum) != nil {
                
            }else{
                if sum > 0{
                    sumArray.append(sum)
                    
                }
                
                
            }
            
        }
        if sumArray.count > N{
            break
        }
        
    }
    
    sumArray = sumArray.sort()
    
    return Int(sumArray[N])
}


public func solutionFixCompilerIssue(N : Int) -> Int {
    ////////////////////////////////////////////////////////////
    //fix compliler issue
    let count = N > 30 ? (N/6):N
    ////////////////////////////////////////////////////////////
    var sumArray:[Int] = []
    
    for (var p = 0; p <= count; p++){
        for (var q = 0; q <= count;q++) {
            let sum = exp(2, top:p)*exp(3, top:q)
            if sumArray.indexOf(sum) != nil {
                
            }else{
                if sum > 0{
                    sumArray.append(sum)
                    
                }
                
                
            }
            
        }
        if sumArray.count > N{
            break
        }
        
    }
    
    sumArray = sumArray.sort()
    
    return Int(sumArray[N])
}


solution(3)
//seems compiler get error if count > 38
//solution(40) will get error

//FIXED PROBLEM
solutionFixCompilerIssue(200)

