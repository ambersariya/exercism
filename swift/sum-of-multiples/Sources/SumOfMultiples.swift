
class SumOfMultiples {

    public static func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
        
        var multiples: [Int] = []
        for n in inMultiples where n > 0 {
            multiples.append(contentsOf: self.getMultipleOfNum(n, limitNum: limit))
        }
        
        return Array(Set(multiples)).reduce(0, +)
    }
    
    private static func getMultipleOfNum(_ num: Int, limitNum limit: Int) -> [Int] {
        return (1..<limit).filter({ (x) in x % num == 0 })
    }
}
