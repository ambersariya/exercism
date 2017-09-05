//Solution goes in Sources
import Foundation

class SpaceAge {
    var seconds: Int = 0
    
    var ageInDays: Double {
        return Double(String(format: "%.2f", Double(seconds) / 86400.0))!
    }
    
    // planetary age
    var onMercury: Double  {
        return Double(String(format: "%.2f", ageInDays / 87.97))!
    }
    
    var onVenus: Double {
        return Double(String(format: "%.2f", ageInDays / 224.70))!
    }
    
    var onEarth: Double {
        return Double(String(format: "%.2f", ageInDays / 365.26))!
    }

    var onMars: Double {
        return Double(String(format: "%.2f", ageInDays / 686.96))!
    }
    
    var onJupiter: Double {
        return Double(String(format: "%.2f", ageInDays / (11.862615 * 365.26)))!
    }
    
    var onSaturn: Double {
        return Double(String(format: "%.2f", ageInDays / (29.447498 * 365.26)))!
    }
    
    var onUranus: Double {
        return Double(String(format: "%.2f", ageInDays / (84.016846 * 365.26)))!
    }
    
    var onNeptune: Double {
        return Double(String(format: "%.2f", ageInDays / (164.79132 * 365.26)))!
    }
    
    public init(_ ageInSeconds: Int) {
        self.seconds = ageInSeconds
    }
}
