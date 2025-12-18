import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectImage: String?
    
    var selectedPictureNumber = 0
    var totalPicture = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Image \(selectedPictureNumber) of \(totalPicture)"
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
