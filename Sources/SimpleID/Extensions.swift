//
//  File.swift
//  
//
//  Created by Patrick Hays on 6/25/22.
//

import Foundation

public extension String {
    func mixcased() -> String {
        var newString = ""
        var counter = 0
        for _ in 0..<self.count {
            let character = self[self.index(self.startIndex, offsetBy: counter)]
            let seed = Int.random(in: 0...1)
            if seed == 0 {
                newString.append(character.lowercased())
            } else {
                newString.append(character.uppercased())
            }
            counter += 1
        }
        return newString
    }
}
