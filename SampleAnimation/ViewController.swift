//
//  ViewController.swift
//  SampleAnimation
//
//  Created by inagaki on 2016/08/13.
//  Copyright © 2016年 inagaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var targetView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapRoundButton(sender: AnyObject) {
        let toValue = 20
        // アニメーションの種類を指定
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        // タイミング
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
        // 開始値、目標値、時間を指定
        animation.fromValue = 0
        animation.toValue = toValue
        animation.duration = 1
        // アニメーションをレイヤーに追加
        targetView.layer.addAnimation(animation, forKey: "cornerRadius")
        // 変更後も角丸を維持
        targetView.layer.cornerRadius = 20

    }

    @IBAction func tapEraseButton(sender: AnyObject) {
        targetView.alpha = 1
        UIView.animateWithDuration(1.0) { () -> Void in
            self.targetView.alpha = 0
        }
    }

}

