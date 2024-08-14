import UIKit

class MemoryGameViewController: UIViewController {

    var cardButtons = [UIButton]()
    var cards = ["🐶", "🐱", "🐰", "🐭", "🐶", "🐱", "🐰", "🐭"]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupCards()
    }

    func setupCards() {
        cards.shuffle()
        let gridSize = 4
        let buttonSize = view.frame.width / CGFloat(gridSize)

        for i in 0..<cards.count {
            let row = i / gridSize
            let col = i % gridSize
            let button = UIButton(frame: CGRect(x: CGFloat(col) * buttonSize,
                                                y: CGFloat(row) * buttonSize + 100,
                                                width: buttonSize, height: buttonSize))
            button.backgroundColor = .systemGray4
            button.tag = i
            button.addTarget(self, action: #selector(cardTapped(_:)), for: .touchUpInside)
            cardButtons.append(button)
            view.addSubview(button)
        }
    }

    @objc func cardTapped(_ sender: UIButton) {
        let card = cards[sender.tag]
        sender.setTitle(card, for: .normal)
        sender.isEnabled = false
        // Weitere Logik wie Matching hinzufügen
    }
}
