//
//  QuestionFactoryProtocol.swift
//  MovieQuiz
//
//  Created by Владимир Горбачев on 15.11.2023.
//

import Foundation

protocol QuestionFactoryProtocol {
    var delegate: QuestionFactoryDelegate? { get set }
    func requestNextQuestion()
}

