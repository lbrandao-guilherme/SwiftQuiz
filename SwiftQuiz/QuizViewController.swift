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
    
    let quizManager = QuizManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        timerView.frame.size.width = view.frame.size.width
        UIView.animate(withDuration: 60.0, delay: 0, options: .curveLinear, animations: {
            self.timerView.frame.size.width = 0
        }) { (success) in
            self.showResults()
        }
        
        getNewQuiz()
    }
    
    func getNewQuiz() {
        quizManager.refreshQuiz()
        QuestionLB.text = quizManager.question
        
        for i in 0..<quizManager.options.count {
            let option = quizManager.options[i]
            let button = AnswerBT[i]
            button.setTitle(option, for: .normal)
        }
    }
    
    func showResults() {
        performSegue(withIdentifier: "resultSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! ResultViewController
        resultViewController.totalAnswers = quizManager.totalAnswer
        resultViewController.totalCorrectAnswers = quizManager.totalCorrectAnswer
    }
    

    @IBAction func selectAnswer(_ sender: UIButton) {
        let index = AnswerBT.firstIndex(of: sender)!
        quizManager.validadeAnswer(index: index)
        getNewQuiz()
    }
    
}
