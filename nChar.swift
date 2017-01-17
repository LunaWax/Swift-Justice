//
// Swift Justice: nChar function 2.0 (Updated on Jan 15, 2017)
//
// The ingenious nChar function is there for you when you need an easy way to get any string's substring based
// on its index, as if you were dealing with an array (similar to how it works in JavaScript).
//
// **User Manual** :
//  1. Call the nChar function with two parameters:
//      str: any string (or constant/variable with a String-type value) you like
//      indx: the target index as a positive integer (we like to count from 0, i.e. 'S' in 'Swift' has the index of 0)
//  2. Let the magic begin
//  3. Receive the character you were looking for (!!!IMPORTANT!!) as a 'String', not 'Character'
//     This means you can use it for your string-combining shady business straight away!
//  4. ????
//  5. Profit
//
//
//          (sound of trumpets)
//
// Created by Daniil Yacine on Jan 14, 2017
//
//          (more trumpets)
//

func nChar (str: String?, indx: Int?) -> String {
    if let recStr = str, let targetIndex = indx, targetIndex <= recStr.characters.count - 1, targetIndex >= 0, !recStr.isEmpty {
        return "\(recStr[recStr.index(recStr.startIndex, offsetBy: targetIndex)])"
    }
    
    return "nChar failed: bad input"
}

// Example of calling the nChar and using the produced result straight away:
let itSnow = nChar(str: "Swift", indx: 0) + "now"
print(itSnow) // This will print out 'Snow'. Well, not literally, but it will.
