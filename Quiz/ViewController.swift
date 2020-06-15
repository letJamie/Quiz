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
    
    let quiz = [
        ["I am a boy", "True"],
        ["why is it?", "True"],
        ["It was good", "False"]
        
    ]
    
    var quizNumber = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        UpdateUI()
    }

    
    
    @IBAction func answerButton(_ sender: UIButton) {
        
        
        let userAnswer = sender.currentTitle!
        let realAnswer = quiz[quizNumber][1]
        
        if userAnswer == realAnswer{
            print("good")
            
        } else {
            print("bad")
        }
        
        if quiz.count > quizNumber + 1 {
            quizNumber += 1
        }
        
        UpdateUI()
        
        
    }
    
    func UpdateUI(){
        
        questionLabel.text = quiz[quizNumber][0]
        
        
    }
    
}

