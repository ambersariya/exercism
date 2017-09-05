//Solution goes in Sources
import Foundation

class Bob {
    
    public static func hey (_ input: String) -> String {
        
        let inputString = input.trimmingCharacters(in: .whitespacesAndNewlines)
            .replacingOccurrences(of: "[0-9]", with: "", options: .regularExpression, range: nil)

        // string characteristics
        let isUppercased = inputString.uppercased() == inputString
        
        let endWithDot = inputString.hasSuffix(".")
        let isQuestion = inputString.hasSuffix("?")

        if inputString.isEmpty {
            return "Fine. Be that way!"
        }
        
        if isQuestion {
            return "Sure."
        }
        
        if isUppercased && !endWithDot {
            return "Whoa, chill out!"
        }

        return "Whatever."
    }
}
