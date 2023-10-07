//
//  SplashViewController.swift
//  PracticaMVVMPatrones
//
//  Created by Sergio Reina Montes on 06/10/2023.
//

import UIKit


//MARK: - PROTOCOL -
protocol SplashViewProtocol: AnyObject {
    func showLoading(_ show: Bool)
    func navigateToHome()
}



//MARK: - CLASE -
class SplashViewController: UIViewController {

    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var viewModel: SplashViewModelProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.onViewsLoaded()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        activityIndicator.stopAnimating() //Nos aseguramos que no haya errores
    }

}



//MARK: - EXTENSION -
extension SplashViewController: SplashViewProtocol {
    //Metodo para navegar a la home
    func navigateToHome() {
        let nextVC = HomeTableViewController()
        nextVC.viewModel = HomeViewModel(viewDelegate: nextVC)
        navigationController?.setViewControllers([nextVC], animated: true)
    }
    
    //Metodo para cargar el activity indicator
    func showLoading(_ show: Bool) {
        switch show {
        case true where !activityIndicator.isAnimating:
            activityIndicator.startAnimating()
        case false where activityIndicator.isAnimating:
            activityIndicator.stopAnimating()
        default: break
        }
    }
    
    
}

