//
//  AlertModel.swift
//  MovieQuiz
//
//  Created by Владимир Горбачев on 17.11.2023.
//

import Foundation

struct AlertModel {
    // Текст заголовка алерта
    let title: String
    // Текст сообщения алерта
    let message: String
    // Текст для кнопки алерта
    let buttonText: String
    // Замыкание без параметров для действия по кнопке алерта
    var completion: () -> Void
}
