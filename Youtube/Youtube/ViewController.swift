//
//  ViewController.swift
//  Youtube
//
//  Created by sri manikanta on 11/09/19.
//  Copyright © 2019 Sri Manikanta. All rights reserved.
//

import UIKit
import YouTubePlayer_Swift

class ViewController: UIViewController {
    
    // https://www.youtube.com/watch?v=QXeEoD0pB3E&list=PLsyeobzWxl7poL9JTVyndKe62ieoN-MZ3
    
    // Video ID - QXeEoD0pB3E
    // Playlist ID - PLsyeobzWxl7poL9JTVyndKe62ieoN-MZ3

    @IBOutlet weak var videoView: YouTubePlayerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func previous(_ sender: Any) {
        videoView.previousVideo()
    }
    
    @IBAction func next(_ sender: Any) {
        videoView.nextVideo()
    }
    
    @IBAction func playVideo(_ sender: UIButton) {
        if(sender.isSelected){
            sender.setTitle("Pause", for: .selected)
            videoView.pause()
        }else{
            sender.setTitle("Pause", for: .normal)
            videoView.play()
        }
    }
    
    @IBAction func loadVideo(_ sender: Any) {
        let loadVideoFromSeries: String = "QXeEoD0pB3E"
        videoView.loadVideoID(loadVideoFromSeries)
    }
    
    
    @IBAction func loadSeries(_ sender: Any) {
        let loadVideoSeries: String = "PLsyeobzWxl7poL9JTVyndKe62ieoN-MZ3"
        videoView.loadPlaylistID(loadVideoSeries)
    }
    
}

