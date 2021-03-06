//
//  PlaylisteViewController.swift
//  Playlist
//
//  Created by Pawel on 25.06.2016.
//  Copyright © 2016 LiczekCompany. All rights reserved.
//

import UIKit

class PlaylisteViewController: UIViewController {
    
    @IBOutlet weak var coverImage0: UIImageView!
    @IBOutlet weak var coverImage1: UIImageView!
    @IBOutlet weak var coverImage2: UIImageView!
    @IBOutlet weak var coverImage3: UIImageView!
    @IBOutlet weak var coverImage4: UIImageView!
    @IBOutlet weak var coverImage5: UIImageView!
    @IBOutlet weak var coverImage6: UIImageView!
    @IBOutlet weak var coverImage7: UIImageView!
    @IBOutlet weak var coverImage8: UIImageView!
    @IBOutlet weak var coverImage9: UIImageView!
    @IBOutlet weak var coverImage10: UIImageView!
    @IBOutlet weak var coverImage11: UIImageView!
    
    var coverImages: [UIImageView]!

    override func viewDidLoad() {
        super.viewDidLoad()

        let coverImages = [coverImage0, coverImage1, coverImage2, coverImage3, coverImage4, coverImage5, coverImage6, coverImage7, coverImage8, coverImage9, coverImage10, coverImage11]
        
        updateUI()
        
        
        }
    
   func updateUI()
    {
        let albums = TheBeatlesLibrary().albums
        
        for i in 0..<coverImages.count
        {
            
            var coverImage = coverImages[i]
            let album = albums[i]
            if let imageName = album["coverImageName"] as? String
                {
                coverImage.image = UIImage(named: imageName)
                }
        }
    }
	
	func updateUI()
	{
		let albums = TheBeatlesLibrary().albums
		
		for i in 0..<coverImages.count
		{
			
			var coverImage = coverImages[i]
			let album = albums[i]
			if let imageName = album["coverImageName"] as? String
			{
				coverImage.image = UIImage(named: imageName)
			}
		}
	}

	
	
}









