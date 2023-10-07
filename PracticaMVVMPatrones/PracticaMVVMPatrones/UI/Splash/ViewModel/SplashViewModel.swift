//
//  SplashViewModel.swift
//  PracticaMVVMPatrones
//
//  Created by Sergio Reina Montes on 06/10/2023.
//

import Foundation

//MARK: - PROTOCOL -
protocol SplashViewModelProtocol {
    func onViewsLoaded()
}




//MARK: - CLASE -
final class SplashViewModel {
    
    private weak var viewDelegate: SplashViewProtocol?

    init(viewDelegate: SplashViewProtocol? = nil) { // "= nil" lo que hace es que al ser opcional, si no hay nada, devuelve nulo
        self.viewDelegate = viewDelegate
    }
    
    private func loadData() {
        viewDelegate?.showLoading(true)
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) { [weak self] in
            // AHORA, VAMOS A NAVEGAR A LA HOME
            self?.viewDelegate?.showLoading(false)
            self?.viewDelegate?.navigateToHome()
        }
    }
}




//MARK: - EXTENSION -
extension SplashViewModel: SplashViewModelProtocol {
    func onViewsLoaded() {
        loadData()
    }
    
    
}






