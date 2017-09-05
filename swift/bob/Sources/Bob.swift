//Solution goes in Sources
import Foundation

class Bob {
    
    public static func hey (_ input: String) -> String {
        
        // string characteristics
        if input.isEmpty() {
            return "Fine. Be that way!"
        }
        
        if input.isCapatilized() {
            return "Whoa, chill out!"
        }
        
        if input.isQuestion() {
            return "Sure."
        }
        
        return "Whatever."
    }
}

extension String {
    
    func isCapatilized() -> Bool {
        let letters = CharacterSet(charactersIn: self).intersection(.letters)
        return !letters.isEmpty && letters.isSubset(of: .uppercaseLetters)
    }
    
    func isQuestion() -> Bool {
        return self.hasSuffix("?")
    }
    
    func isEmpty() -> Bool {
        let trimmedString = self.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedString.isEmpty
    }
}
