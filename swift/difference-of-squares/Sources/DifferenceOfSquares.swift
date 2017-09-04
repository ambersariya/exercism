//Solution goes in Sources

import Foundation

struct Squares {
    private let numRange: CountableClosedRange<Int>

    init(_ num: Int) {
        self.numRange = (1...num)
    }
    
    var squareOfSums: Decimal {
        return pow(Decimal(self.numRange.reduce(0,+)), 2)
    }
    
    var sumOfSquares: Decimal {
        return (self.numRange.map { i in pow(Decimal(i), 2) }).reduce(0,+)
    }

    var differenceOfSquares: Decimal {
        return squareOfSums - sumOfSquares
    }
}