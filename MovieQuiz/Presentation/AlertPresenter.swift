import Foundation
import UIKit
final class AlertPresenter {
    private var currentQuestionIndex = 0
    private var correctAnswers = 0
    private var questionFactory: QuestionFactoryProtocol?
    private var viewController: UIViewController?
    
    
    init(viewController:UIViewController) {
        self.viewController = viewController
    }
    
    func show(alertPresent: AlertModel) {
        
        let alert = UIAlertController(
            title: alertPresent.title,
            message: alertPresent.message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(title: alertPresent.buttonText, style: .default) { _ in
            alertPresent.completion()
        }
            alert.addAction(action)
            viewController?.present(alert, animated: true, completion: nil)
        }
    }
