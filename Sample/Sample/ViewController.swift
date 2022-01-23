//
//  ViewController.swift
//  Sample
//
//  Created by Selek, Abdullah on 23.10.17.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

import UIKit
import AVKit
import Swifty360Player

class ViewController: UIViewController {

    var swifty360ViewController: Swifty360ViewController!
    var player: AVPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.black

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(1)) {[self] in
//            let videoURL = URL(fileURLWithPath: Bundle.main.path(forResource: "google-help-vr", ofType: "mp4")!)
            let videoURL = URL(string: "https://camlive302.iqilu.com/live/sdlianghui2022vr/playlist.m3u8")!
            player = AVPlayer(url: videoURL)

            let motionManager = Swifty360MotionManager.shared
            // set motionManager nil to skip motion changes
            swifty360ViewController = Swifty360ViewController(withAVPlayer: player, motionManager: motionManager)

            addChild(swifty360ViewController)
            view.addSubview(swifty360ViewController.view)
            swifty360ViewController.didMove(toParent: self)

            player.play()

            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(reorientVerticalCameraAngle))
            swifty360ViewController.view.addGestureRecognizer(tapGestureRecognizer)
        }
    }

    @objc func reorientVerticalCameraAngle() {
        swifty360ViewController.reorientVerticalCameraAngleToHorizon(animated: true)
    }

}

