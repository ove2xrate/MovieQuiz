import Foundation
struct BestGame: Codable {
   
    let correct: Int
    let total: Int
    let date: Date

    }

extension BestGame: Comparable {
    static func < (lhs: BestGame, rhs: BestGame) -> Bool {
        return lhs.correct < rhs.correct
    }
}
