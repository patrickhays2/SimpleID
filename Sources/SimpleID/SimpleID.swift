import Foundation

public class SimpleID {
    
    //var dummyIDs = [String]()
    let letters = "abcdefghijklmnopqrstuvwxyz"
    let numbers = "0123456789"
    
    public init()
    
    public enum characters {
        case lettersOnly
        case numbersOnly
        case mixedCharacters
    }
    public enum cases {
        case upperCase
        case lowerCase
        case mixedCase
    }
    
    public func create(_ chars:characters,_ cases:cases = .lowerCase,length:Int = 12) -> String {
        var pool = ""
        var idString = ""
        switch chars {
        case .lettersOnly: pool = letters
        case .numbersOnly: pool = numbers
        case .mixedCharacters: pool = String("\(letters)\(numbers)")
        }
        switch cases {
        case .upperCase: pool = pool.uppercased()
        case .lowerCase: pool = pool.lowercased()
        case .mixedCase: pool = pool.mixcased()
        }
        
        for _ in 0..<length {
            idString.append(pool.randomElement()!)
        }
        return idString
    }
    
    public func createBatch(amount:Int,_ chars:characters,_ cases:cases = .lowerCase,length:Int=12) -> [String] {
        var idStrings = [String]()
        while idStrings.count != amount {
            let newID = create(chars, cases, length: length)
            if idStrings.contains(newID) == true {
                
            } else {
                idStrings.append(newID)
            }
        }
        return idStrings
    }
    
    public func createDummyEthAddress() -> String {
        let id = create(.mixedCharacters,.mixedCase,length: 40)
        return "0x\(id)"
    }
    
    public func createDummyEthAddress(amount:Int) -> [String] {
        var idStrings = [String]()
        if amount < 2 {}
        else {
            for _ in 0..<amount {
                idStrings.append(createDummyEthAddress())
            }
        }
        return idStrings
    }
}

