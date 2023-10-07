//
//  HomeCellTableViewCell.swift
//  PracticaMVVMPatrones
//
//  Created by Sergio Reina Montes on 06/10/2023.
//

import UIKit

class HomeCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var viewCellHome: UIView!
    @IBOutlet weak var imageCellHome: UIImageView!
    @IBOutlet weak var nameCellHome: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        nameCellHome.text = nil
        imageCellHome.image = nil
    }
    
    
    func updateViews(data: TeamModel?) {
        guard let data = data else { return }
        update(name: data.name)
        update(image: data.image)
        
    }
    
    private func update(name: String?) {
        nameCellHome.text = name ?? ""
    }
    private func update(image: String?) {
        imageCellHome.image = UIImage(named: image ?? "")
    }
    
}
