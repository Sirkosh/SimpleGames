import UIKit

class PuzzleGameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupGameBoard()
    }

    func setupGameBoard() {
        let gridSize = 3
        let buttonSize = view.frame.width / CGFloat(gridSize)

        for row in 0..<gridSize {
            for col in 0..<gridSize {
                let button = UIButton(frame: CGRect(x: CGFloat(col) * buttonSize,
                                                    y: CGFloat(row) * buttonSize + 100,
                                                    width: buttonSize, height: buttonSize))
                button.backgroundColor = .blue
                button.setTitle("\(row * gridSize + col)", for: .normal)
                view.addSubview(button)
            }
        }
    }
}
