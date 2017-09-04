//Solution goes in Sources

class Year {
    var isLeapYear = false
    public init(calendarYear year: Int) {        
        let isDivisibleBy4 = (year % 4 == 0)
        let isDivisibleBy100 = (year % 100 == 0)
        let isDivisibleBy400 = (year % 400 == 0)

        isLeapYear = (isDivisibleBy4 && !isDivisibleBy100)
            || (isDivisibleBy4 && isDivisibleBy100 && isDivisibleBy400)
    }
}