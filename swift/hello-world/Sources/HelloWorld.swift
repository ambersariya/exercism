//Solution goes in Sources

class HelloWorld {

    static func hello(_ name: String? = nil) -> String {

        guard let personName = name else {
            return "Hello, World!"
        }

        return "Hello, \(String(describing: personName))!"
    }
}