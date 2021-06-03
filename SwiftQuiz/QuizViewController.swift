//
//  QuizViewController.swift
//  SwiftQuiz
//
//  Created by Luiz Brandão on 03/06/21.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var timerView: UILabel!
    @IBOutlet weak var QuestionLB: UILabel!
    @IBOutlet var AnswerBT: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func selectAnswer(_ sender: UIButton) {
        
    }
    
}
