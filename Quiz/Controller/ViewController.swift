//
//  ViewController.swift
//  Quiz
//
//  Created by Jamie on 2020/06/14.
//  Copyright © 2020 Jamie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        UpdateUI()
    }
    
    
    var quizBrain = QuizBrain()
    
    @IBAction func answerButton(_ sender: UIButton) {
        
        
        let userAnswer = sender.currentTitle!
        
        let result = quizBrain.checkAnswer(userAnswer) 
        
        if result {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(UpdateUI), userInfo: nil, repeats: false)
        
        
    }
    
    @objc func UpdateUI() {
        
        questionLabel.text = quizBrain.qetQuestionText()
        progressBar.progress = quizBrain.getProgress()

        scoreLabel.text = String(quizBrain.getScore())
        
        falseButton.backgroundColor = UIColor.clear
        trueButton.backgroundColor = UIColor.clear

    }
    
        
}

