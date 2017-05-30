
import UIKit

class FeedTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconimgview: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var descriptionlabel: UILabel!
    @IBOutlet weak var accessorylabel: UILabel!
    @IBOutlet weak var categorylabel: UILabel!
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setupUI(news: News){
        self.iconimgview.image = news.iconImage
        self.titlelabel.text = news.title
        self.descriptionlabel.text = news.description
        self.accessorylabel.text = "\(news.author). \(news.views) views. \(news.createdate)"
        self.categorylabel.text = news.category
    
    }
    
}
