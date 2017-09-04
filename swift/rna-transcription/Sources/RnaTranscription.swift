//Solution goes in Sources
import Foundation

struct RnaTranscription {
    enum TranscriptionError: Error {
        case invalidNucleotide       
    }
}

class Nucleotide
{
    private var strand: String = ""
    
    public init(_ strand: String) throws {

        for char in strand.characters {
            switch char {
                case "C":
                    self.strand += "G"
                case "G":
                    self.strand += "C"
                case "T":
                    self.strand += "A";
                case "A":
                    self.strand += "U";
                default:
                    throw RnaTranscription.TranscriptionError.invalidNucleotide
            }
        }
    }
    
    public func complementOfDNA() -> String {
        return self.strand
    }
}
