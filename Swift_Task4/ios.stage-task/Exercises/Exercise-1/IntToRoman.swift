import Foundation

public extension Int {
    
    var roman: String? {
        var value = self
        var result = ""
        let romanKeys: [(number: Int, symbol: String)] = [(1000, "M"),
                                                          (900, "CM"),
                                                          (500, "D"),
                                                          (400, "CD"),
                                                          (100, "C"),
                                                          (90, "XC"),
                                                          (50, "L"),
                                                          (40, "XL"),
                                                          (10, "X"),
                                                          (9, "IX"),
                                                          (5, "V"),
                                                          (4, "IV"),
                                                          (1, "I")]
        
        if value <= 0 { return nil }
        else {
            for element in romanKeys {
                while (value >= element.number) {
                    value -= element.number
                    result += element.symbol
                }
            }
            return result
        }
    }
}
