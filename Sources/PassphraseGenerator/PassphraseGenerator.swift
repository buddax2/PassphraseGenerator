import Foundation

public struct PassphraseGenerator {

    var dicewareEntries: [String: String] = {
        let dicewarePath = Bundle.module.path(forResource: "diceware", ofType: "txt")!
        guard let dicewareLines = try? String(contentsOfFile: dicewarePath).components(separatedBy: "\n") else {
            fatalError("Could not load diceware entries")
        }

        var dicewareEntries = [String: String]()
        dicewareLines.filter { $0.isEmpty == false }.forEach { (line: String) in
            let components = line.components(separatedBy: "\t")
            dicewareEntries[components[0]] = components[1]
        }

        return dicewareEntries
    }()
    
    public init() {
            
    }

    func throwDie() -> Int {
        return Int(arc4random() % 6) + 1
    }

    func throwNDice(n: Int) -> [Int] {
        return (0..<n).map { _ in return throwDie() }
    }
    
    public func randomWord() -> String {
        let number = throwNDice(n: 5).map({ String($0) }).joined()
        let phrase = dicewareEntries[number]
        return phrase!
    }
    
    public func randomPhrase(lenght: Int, separator: String = "-") -> String {
        return (0..<lenght).map({ _ in randomWord()}).joined(separator: separator)
    }
}
