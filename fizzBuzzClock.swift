//
//  fizzBuzzClock.swift
//  
//
//  Created by usr on 21/01/2017.
//
//

import Foundation

func fizzBuzzCuckooClock(_ time: String) -> String {
    let hoursStr = time.components(separatedBy: ":")[0]
    let minutesStr = time.components(separatedBy: ":")[1]
    let minutes = Int(minutesStr)!
    var hours = Int(hoursStr)!
    if hours > 12 {
        hours -= 12
    } else if hours == 0 {
        hours = 12
    }
    var outArr = [String]()
    
    switch minutesStr {
    case "00":
        for _ in 1...hours {
            outArr.append("Cuckoo")
        }
    case "30":
        outArr.append("Cuckoo")
    default:
        if minutes % 3 == 0 && minutes % 5 == 0 {
            outArr.append("Fizz Buzz")
        } else if minutes % 3 == 0 {
            outArr.append("Fizz")
        } else if minutes % 5 == 0 {
            outArr.append("Buzz")
        } else {
            outArr.append("tick")
        }
    }
    
    return outArr.joined(separator: " ")
}

fizzBuzzCuckooClock("10:17")
