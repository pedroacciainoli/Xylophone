import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(letter: sender.currentTitle!)
        print(sender.currentTitle!)
        
        UIView.animate(withDuration: 0.3) {
                sender.alpha = 0.5
            }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3 ) {
                UIView.animate(withDuration: 0.3) {
                    sender.alpha = 1.0
                }
            
            }
    }
    
    func playSound(letter: String) {
        let url = Bundle.main.url(forResource: letter, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    
}
