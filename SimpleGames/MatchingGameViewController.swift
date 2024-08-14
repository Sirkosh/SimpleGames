import UIKit

class MatchingGameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupMatchingGame()
    }

    func setupMatchingGame() {
        let gridSize = 5
        let buttonSize = view.frame.width / CGFloat(gridSize)

        for row in 0..<gridSize {
            for col in 0..<gridSize {
                let button = UIButton(frame: CGRect(x: CGFloat(col) * buttonSize,
                                                    y: CGFloat(row) * buttonSize + 100,
                                                    width: buttonSize, height: buttonSize))
                button.backgroundColor = .red
                button.setTitle("🍎", for: .normal)
                view.addSubview(button)
            }
        }
    }
}

