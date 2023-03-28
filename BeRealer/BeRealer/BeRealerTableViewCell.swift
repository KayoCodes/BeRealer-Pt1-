//
//  BeRealerTableViewCell.swift
//  BeRealer
//
//  Created by keenan ray on 3/27/23.
//

import UIKit
import Alamofire
import AlamofireImage

class BeRealerTableViewCell: UITableViewCell {

    @IBOutlet weak var usernameField: UILabel!
    
    @IBOutlet weak var dateField: UILabel!
    
    @IBOutlet weak var imageField: UIImageView!
    
    @IBOutlet weak var captionField: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    private var imageDataRequest: DataRequest?

    func configure(with post: Post) {
        // TODO: Pt 1 - Configure Post Cell
        if let user = post.user {
            usernameField.text = user.username
        }

        // Image
        if let imageFile = post.imageFile,
           let imageUrl = imageFile.url {
            
            // Use AlamofireImage helper to fetch remote image from URL
            imageDataRequest = AF.request(imageUrl).responseImage { [weak self] response in
                switch response.result {
                case .success(let image):
                    // Set image view image with fetched image
                    self?.imageField.image = image
                case .failure(let error):
                    print("❌ Error fetching image: \(error.localizedDescription)")
                    break
                }
            }
        }

        // Caption
        captionField.text = post.caption

        // Date
        if let date = post.createdAt {
            dateField.text = DateFormatter.postFormatter.string(from: date)
        }

    }
    
}
