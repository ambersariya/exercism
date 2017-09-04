//Solution goes in Sources
import Foundation

class Gigasecond
{
    private let numSeconds = pow(Double(10), Double(9))
    private let dateFormatter = DateFormatter()
    private var calculatedDate: Date?
    
    init?(from dateStr: String) {
        self.dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        self.dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        self.calculatedDate = self.dateFormatter.date(from: dateStr)
        self.calculatedDate?.addTimeInterval(numSeconds)
    }
    
    var description:String {
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.timeZone = TimeZone(secondsFromGMT: 0)
        dateFormatterPrint.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"        

        return dateFormatterPrint.string(from: self.calculatedDate!)
    }
}
