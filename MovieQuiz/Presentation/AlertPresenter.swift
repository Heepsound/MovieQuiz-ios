//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Владимир Горбачев on 17.11.2023.
//

import UIKit

final class AlertPresenter {
    
    weak var delegate: UIViewController?
    
    func show(_ alertModel: AlertModel) {
        // создаём объекты всплывающего окна
        let alert = UIAlertController(title: alertModel.title,
                                      message: alertModel.message,
                                      preferredStyle: .alert)
        // константа с кнопкой для системного алерта
        let action = UIAlertAction(title: alertModel.buttonText, style: .default) { _ in
            alertModel.completion()
        }

        // добавляем в алерт кнопку
        alert.addAction(action)

        // показываем всплывающее окно
        delegate?.present(alert, animated: true, completion: nil)
    }
}
