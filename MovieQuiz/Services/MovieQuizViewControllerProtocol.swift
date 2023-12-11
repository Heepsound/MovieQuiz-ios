//
//  MovieQuizViewControllerProtocol.swift
//  MovieQuiz
//
//  Created by Владимир Горбачев on 11.12.2023.
//

import Foundation

protocol MovieQuizViewControllerProtocol: AnyObject {
    func show(quiz step: QuizStepViewModel)
    func show(alert: AlertModel)
    
    func showLoadingIndicator()
    func hideLoadingIndicator()
    
    func highlightImageBorder(isCorrect: Bool)
    func hideImageBorder()
}

