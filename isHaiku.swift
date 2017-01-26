//
//  Is this a Haiku or what?
//  
//
//  Created by Daniil Yacine on 18/01/2017.
//
//

import Foundation

// nChar

func nChar (_ str: String?, _ indx: Int?) -> String? {
    if let recStr = str, let targetIndex = indx, targetIndex <= recStr.characters.count - 1, targetIndex >= 0, !recStr.isEmpty {
        return "\(recStr[recStr.index(recStr.startIndex, offsetBy: targetIndex)])"
    }
    
    return nil
}

// isVow

func isVow(_ str: String?) -> Bool? {
    if var inpString = str, !inpString.isEmpty {
        let vowels = ["а", "о", "э", "и", "у", "ы", "е", "ё", "ю", "я"]
        inpString = inpString.lowercased()
        if vowels.contains(inpString) {
            return true
        }
        return false
    }
    return nil
}

// inArow
func inArow(_ str: String) -> Int {
    let clet = str.lowercased()
    var counter = 0
    for chars in 0...clet.characters.count - 2 {
        if nChar(clet, chars)! == nChar(clet, chars + 1)! && isVow(nChar(clet, chars)!)! {
            counter += 1
        }
    }
    return counter
}

// vowelCount

func vowelCount(_ str: String?) -> Int? {
    let vowels = ["а", "о", "э", "и", "у", "ы", "е", "ё", "ю", "я"]
    if var inpString = str, !inpString.isEmpty {
        inpString = inpString.lowercased()
        var vowelCounter: Int = 0
        for index in 0...inpString.characters.count - 1 {
            //                        print(nChar(inpString, index)!)
            if vowels.contains(nChar(inpString, index)!) {
                //                                print("нашел гласную \(nChar(inpString, index)!)")
                vowelCounter += 1
            }
        }
        return vowelCounter - inArow(inpString)
    }
    return nil
}

// sylCount

func sylCount(_ str: String?) -> Int? {
    if let inpText = str, !inpText.isEmpty {
        let numbVow = vowelCount(inpText)!
        //        print("В этом тексте \(numbVow) слогов")
        return numbVow
    }
    return nil
}

// splitByLine

func splitByLine(_ str: String?) -> Array<String>? {
    if let inpStr = str, !inpStr.isEmpty {
        return inpStr.components(separatedBy: "\n")
    }
    return nil
}

// isHaiku

func isHaiku(_ str: String?) -> Bool? {
    if let poem = str, var dissect = splitByLine(poem), !poem.isEmpty, dissect.count == 3 {
        if sylCount(dissect[0])! == 5 && sylCount(dissect[1])! == 7 && sylCount(dissect[0])! == 5 {
//            print("Это хокку")
            return true
        } else {
//            print("Это не хокку")
            return false
        }
    }
    return nil
}

// test

let matsuoBase = "Луна-проводник\nЗовет: Загляни ко мне\nДом у дороги."
let ivanich = "Ну в общем, луна\nОхота крепкое\nРомантика и прочее творчество!"

print("Стих рассказывает Мацуо Басе:\n\n\(matsuoBase)\n")

if isHaiku(matsuoBase)! {
    print("И это хокку!\n================")
} else {
    print("И он читает стих Иваныча, так как это не хокку\n================")
}

print("Стих рассказывает Иваныч:\n\n\(ivanich)\n")

if isHaiku(ivanich)! {
    print("Иваныч так пьян, что его слова складываются в хокку\n================")
} else {
    print("Это, ожидаемо, заводской речитатив\n================")
}
