//
//  HomeTableViewController.swift
//  PracticaMVVMPatrones
//
//  Created by Sergio Reina Montes on 06/10/2023.
//

import UIKit


//MARK: - PROTOCOL -

protocol HomeViewProtocol: AnyObject {
    func navigateToDetail(with data: TeamModel?)
    func updateViews()
}





//MARK: - CLASE -

class HomeTableViewController: UITableViewController {
    
    var viewModel: HomeViewModelProtocol?
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        viewModel?.onViewsLoaded()
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName: "HomeCellTableViewCell", bundle: nil), forCellReuseIdentifier: "homeCell")
    }
    

    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModel?.dataCount ?? 0
    }

    
    //Update views
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath) as? HomeCellTableViewCell else {
            return UITableViewCell()
        }
        
        if let data = viewModel?.data(at: indexPath.row) {
            cell.updateViews(data: data)
        }

        return cell
    }
    
    
    //Select item
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel?.onItemSelected(at: indexPath.row)
    }
    
}


//MARK: - EXTENSION -
extension HomeTableViewController: HomeViewProtocol {
    func updateViews() {
        tableView.reloadData()
    }
    
    func navigateToDetail(with data: TeamModel?) {
        let nextVC = DetailViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
}
