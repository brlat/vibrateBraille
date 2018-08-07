import UIKit

import AudioToolbox // バイブレートするAudioServicesPlaySystemSound()を使うために追加

class ViewController: UIViewController {

// 「ブーブーー」と2回振動する関数    
@IBAction func twoVibe(){
        AudioServicesPlaySystemSound(1011)
        sleep(1) // 少し間を置く
    }
    
// 「ブー」と1回振動する関数
@IBAction func oneVibe(){
        AudioServicesPlaySystemSound(4095)
        sleep(1) // 少し間を置く
    }

// これ以後は変更無し
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

