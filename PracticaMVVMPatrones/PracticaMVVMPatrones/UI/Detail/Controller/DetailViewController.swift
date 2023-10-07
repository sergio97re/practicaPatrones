//
//  DetailViewController.swift
//  PracticaMVVMPatrones
//
//  Created by Sergio Reina Montes on 06/10/2023.
//

import UIKit


//MARK: - PROTOCOL -
protocol DetailViewProtocol: AnyObject {
    func updateView(with data: TeamModel?)
}



//MARK: - CLASE -

class DetailViewController: UIViewController {
    
    var viewModel: DetailViewModelProtocol?

    //IBOutlet
    @IBOutlet weak var imageViewDetail: UIImageView!
    @IBOutlet weak var titleViewDetail: UILabel!
    @IBOutlet weak var descriptionViewDetail: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.viewDidLoad()
    }
    
    
    private func update(name: String?) {
        titleViewDetail.text = name ?? ""
    }
    private func update(image: String?) {
        imageViewDetail.image = UIImage(named: image ?? "")
    }
    private func update(description: String?) {
        descriptionViewDetail.text = description ?? ""
    }
    
    

}


//MARK: - EXTENSION -
extension DetailViewController: DetailViewProtocol {
    func updateView(with data: TeamModel?) {
        guard let data = data else { return }
        update(name: data.name)
        update(image: data.image)
        update(description: data.description)
        }
    }
    
    

    
    

