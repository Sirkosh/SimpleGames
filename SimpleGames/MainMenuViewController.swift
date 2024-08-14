import UIKit

class MainMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupMenu()
    }

    func setupMenu() {
        let puzzleButton = createButton(title: "Puzzle Game", action: #selector(startPuzzleGame))
        puzzleButton.frame.origin = CGPoint(x: 50, y: 150)

        let memoryButton = createButton(title: "Memory Game", action: #selector(startMemoryGame))
        memoryButton.frame.origin = CGPoint(x: 50, y: 250)

        let matchingButton = createButton(title: "Matching Game", action: #selector(startMatchingGame))
        matchingButton.frame.origin = CGPoint(x: 50, y: 350)

        view.addSubview(puzzleButton)
        view.addSubview(memoryButton)
        view.addSubview(matchingButton)
    }

    func createButton(title: String, action: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.frame.size = CGSize(width: 200, height: 50)
        button.addTarget(self, action: action, for: .touchUpInside)
        return button
    }

    @objc func startPuzzleGame() {
        let vc = PuzzleGameViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @objc func startMemoryGame() {
        let vc = MemoryGameViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @objc func startMatchingGame() {
        let vc = MatchingGameViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

