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
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        AnswerdLB.text = "Perguntas respondidas: \(totalAnswers)"
        CorrectLB.text = "Perguntas corretas: \(totalCorrectAnswers)"
        WrongLB.text = "Pergutnas erradas: \(totalAnswers - totalCorrectAnswers)"
        
        let score = totalCorrectAnswers * 100 / totalAnswers
        ScoreLB.text = "\(score)%"
    }
    

    @IBAction func closeView(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
