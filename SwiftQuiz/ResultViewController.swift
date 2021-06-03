//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Luiz Brandão on 03/06/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var AnswerdLB: UILabel!
    @IBOutlet weak var CorrectLB: UILabel!
    @IBOutlet weak var WrongLB: UILabel!
    @IBOutlet weak var ScoreLB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func closeView(_ sender: UIButton) {
    }
    

}
