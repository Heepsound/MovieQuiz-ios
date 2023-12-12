//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Владимир Горбачев on 17.11.2023.
//

import UIKit

final class AlertPresenter {
    
    static func show(alertModel: AlertModel, delegate: UIViewController?) {
        let alert = UIAlertController(title: alertModel.title,
                                      message: alertModel.message,
                                      preferredStyle: .alert)
        alert.view.accessibilityIdentifier = "Results"
        
        let action = UIAlertAction(title: alertModel.buttonText, style: .default) { _ in
            alertModel.completion()
        }

        alert.addAction(action)

        delegate?.present(alert, animated: true, completion: nil)
    }
}
