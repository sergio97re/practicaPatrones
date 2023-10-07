//
//  HomeViewModel.swift
//  PracticaMVVMPatrones
//
//  Created by Sergio Reina Montes on 06/10/2023.
//

import Foundation


//MARK: - PROTOCOL -
protocol HomeViewModelProtocol {
    var dataCount: Int { get }
    func onViewsLoaded()
    func data(at index: Int) -> TeamModel?
    func onItemSelected(at index: Int)
}








//MARK: - CLASE -
final class HomeViewModel {
    
    private weak var viewDelegate: HomeViewProtocol?
    private var viewData = TeamsModel() //Para que sea una Array
    
    init(viewDelegate: HomeViewProtocol? = nil) {
        self.viewDelegate = viewDelegate
    }
    
    private func loadData() {
        viewData = sampleTeamData
        
        //AHORA NOTIFICAMOS A LA VISTA QUE PINTE LOS DATOS
        viewDelegate?.updateViews()
    }
}











//MARK: - EXTENSION -
extension HomeViewModel: HomeViewModelProtocol {
    func onItemSelected(at index: Int) {
        guard let data = data(at: index) else { return }
        
        //AHORA, NOTIFICAMOS A LA VISTA QUE NAVEGUE AL DETALLE
        viewDelegate?.navigateToDetail(with: data)
    }
    
    
    func data(at index: Int) -> TeamModel? {
        guard index < dataCount else { return nil}
        return viewData[index]
    }
    
    var dataCount: Int {
        viewData.count
    }
    
    func onViewsLoaded() {
        loadData()
    }
    
    
}
