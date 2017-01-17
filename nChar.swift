//
// Swift Justice: nChar function 3.0 (Updated on Jan 17, 2017)
//
// The ingenious nChar function is there for you when you need an easy way to get any string's substring based
// on its index, as if you were dealing with an array (similar to how it works in JavaScript).
//
// **User Manual** :
//  1. Call the nChar function with two parameters:
//      1.1 any string (or constant/variable with a String-type value) you like
//      1.2 the target index as a positive integer
//  2. Let the magic begin
//  3. Receive the character you were looking for (!!!IMPORTANT!!) as an optional 'String?', not 'Character'
//  4. Don't be a fool – unwrap your tool! nChar returns an optional value (for your own safety).
//  5. Profit
//
//
//          (sound of trumpets)
//
// Created by Daniil Yacine on Jan 14, 2017
// My stunt double and co-star: Vasili Pikulev
//
//          (more trumpets)
//

func nChar (_ str: String?, _ indx: Int?) -> String? {
    if let recStr = str, let targetIndex = indx, targetIndex <= recStr.characters.count - 1, targetIndex >= 0, !recStr.isEmpty {
        return "\(recStr[recStr.index(recStr.startIndex, offsetBy: targetIndex)])"
    }
    
    return nil
}

// Example of calling the nChar and using the produced result straight away:
let itSnow = nChar("Swift", 0)! + "now" // Don't forget to unwrap nChar's value
print(itSnow) // This will print out 'Snow'. Well, not literally, but it will.
