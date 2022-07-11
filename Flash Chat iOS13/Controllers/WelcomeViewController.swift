//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
//import CLTypingLabel

class WelcomeViewController: UIViewController {

    //    @IBOutlet weak var titleLabel: CLTypingLabel!

    @IBOutlet weak var titleLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        //        titleLabel.charInterval = 0.5
        //        titleLabel.text = "⚡️FlashChat"
        //        titleLabel.onTypingAnimationFinished = {
        //            print("onTypingAnimationFinished")
        //        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
        titleLabel.text = ""
    }
    override func viewDidAppear(_ animated: Bool) {
        let titleText = K.appName
        super.viewDidAppear(animated)
        var charIndex = 0.0
        for text in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { _ in
                DispatchQueue.main.async {
                    self.titleLabel.text?.append(text)
                }
            }
            charIndex += 1
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

    }

    deinit {
        print("RegisterViewController deinit")
    }
}
