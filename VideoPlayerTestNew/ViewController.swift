//
//  ViewController.swift
//  VideoPlayerTestNew
//
//  Created by Kausthubh adhikari on 29/03/22.
//

import UIKit
import Player

class ViewController: UIViewController {

    @IBOutlet weak var videoView: UIView!
    
    var player: Player?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setupVideoPlayer()
    }
    
    
    //MARK: - Setup Video player and video
    func setupVideoPlayer(){
        player = Player()
        player?.view.frame = videoView.bounds
        player?.fillMode = .resizeAspectFill
        player?.autoplay = true
        player?.playbackLoops = true
        self.videoView.addSubview((self.player?.view)!)
        
        let url = URL(string: "http://techslides.com/demos/sample-videos/small.mp4")
        player?.url = url
    }
    
    
    //MARK: Pause the video
    override func viewDidDisappear(_ animated: Bool) {
        player?.pause()
    }
    
    
    // MARK: Resume the video fromm where paused
    override func viewDidAppear(_ animated: Bool) {
        player?.playFromCurrentTime()
    }
    

}

