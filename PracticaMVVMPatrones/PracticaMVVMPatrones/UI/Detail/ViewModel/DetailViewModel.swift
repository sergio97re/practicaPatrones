//
//  DetailViewModel.swift
//  PracticaMVVMPatrones
//
//  Created by Sergio Reina Montes on 06/10/2023.
//

import Foundation


//MARK: - PROTOCOL -
protocol DetailViewModelProtocol {
    func viewDidLoad()
}



//MARK: - CLASE -
final class DetailViewModel {
    
    private weak var viewDelegate: DetailViewProtocol?
    private var viewData: TeamModel?
    
    init(viewDelegate: DetailViewProtocol? = nil, data: TeamModel) {
        self.viewDelegate = viewDelegate
        self.viewData = data
    }
    
    private func loadData() {
        //NOTIFICAMOS A LA VISTA PARA QUE PINTE LOS DATOS
        viewDelegate?.updateView(with: viewData)
    }
}




//MARK: - EXTENSION -
extension DetailViewModel: DetailViewModelProtocol {
    func viewDidLoad() {
        loadData()
    }
    
    
}
