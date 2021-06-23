//
//  SplashScreenViewController.swift
//  TaskOne
//
//  Created by Анастасия Ларина on 23.06.2021.
//

import UIKit

class SplashScreenViewController: UIViewController {

    @IBOutlet weak var splashImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       animate()
    }
    
    private func animate() {
        let duration = 0.75
        splashImageView.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        UIView.animate(
            withDuration: duration * 3,
            delay: 0,
            usingSpringWithDamping: 0.7,
            initialSpringVelocity: 0,
            options: [],
            animations: {
                self.splashImageView.transform = .identity
            },
            completion: { finished in
                guard finished else { return }
                self.home()
            })
    }
    
    private func home() {
        performSegue(withIdentifier: "splash", sender: nil)
    }


}
