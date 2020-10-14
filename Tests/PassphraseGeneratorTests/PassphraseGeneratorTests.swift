import XCTest
@testable import PassphraseGenerator

final class PassphraseGeneratorTests: XCTestCase {
    
    func testReadPhrases() {
        let generator = PassphraseGenerator()
        
        XCTAssertFalse(generator.dicewareEntries.values.isEmpty)
    }

    func testReadPhrase() {
        let generator = PassphraseGenerator()
        let phrase1 = generator.dicewareEntries["22341"] //dante
        let phrase2 = generator.dicewareEntries["52613"] //samba
        let phrase3 = generator.dicewareEntries["55211"] //speed
        let phrase4 = generator.dicewareEntries["23535"] //duck
        
        XCTAssertTrue(phrase1 == "dante")
        XCTAssertTrue(phrase2 == "samba")
        XCTAssertTrue(phrase3 == "speed")
        XCTAssertTrue(phrase4 == "duck")
    }
    
    func testGetRandomWord() {
        let generator = PassphraseGenerator()
        let randomPhrase = generator.randomWord()
        XCTAssertFalse(randomPhrase.isEmpty)
    }

    func testGetRandomPhrase() {
        let generator = PassphraseGenerator()
        let phrase = generator.randomPhrase(lenght: 3)
        XCTAssertFalse(phrase.isEmpty)
    }
    
    static var allTests = [
        ("testExample", testReadPhrases, testReadPhrase, testGetRandomWord, testGetRandomPhrase),
    ]
    
}
