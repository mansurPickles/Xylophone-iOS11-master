import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func notePressed(_ sender: UIButton) {

        var notePlayed : Int        //temp variable to store tag
        var sendNote : String       //temp variable to store wav str name
        sendNote = ""
        notePlayed = sender.tag
        
        //convert tag to string
        switch notePlayed {
        case 1:
            sendNote = "note1"
            break
        case 2:
            sendNote = "note2"
            break
        case 3:
            sendNote = "note3"
            break
        case 4:
            sendNote = "note4"
            break
        case 5:
            sendNote = "note5"
            break
        case 6:
            sendNote = "note6"
            break
        case 7:
            sendNote = "note7"
            break
        default:
            break
        }
        
        //try playing wav file
        let soundURL = Bundle.main.url(forResource: sendNote, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
            
        catch{
            print(error)
        }

        func play(){
            
            //if a wav is already playing, reset it and play new key
            if audioPlayer.isPlaying{
                audioPlayer.stop()
                audioPlayer.currentTime = 0
                audioPlayer.play()
            }
                
            }
        
        
        audioPlayer.play()
        
    }
}

    
  


