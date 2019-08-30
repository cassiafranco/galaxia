//
//  ExplosaoViewController.swift
//  galaxia
//
//  Created by Cassia Franco on 12/08/2019.
//  Copyright © 2019 Cassia Franco. All rights reserved.
//

import UIKit

class ExplosaoViewController: UIViewController {

    @IBOutlet weak var planeta: UIImageView!
    
    @IBOutlet weak var explosao: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func explodir(_ sender: Any) {
        
        UIView.animate(withDuration: 0.2){
            self.planeta.alpha = 0
        }
        explosao.animationImages = [
        UIImage (named: "explosao_1")!,
        UIImage (named: "explosao_2")!,
        UIImage (named: "explosao_3")!,
        UIImage (named: "explosao_4")!,
        UIImage (named: "explosao_5")!
        
        ]
        explosao.animationRepeatCount = 1
        explosao.startAnimating()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
