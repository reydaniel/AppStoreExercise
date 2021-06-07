//
//  AppDetailViewController.swift
//  AppStore
//
//  Created by ReyDaniel on 04/06/21.
//

import UIKit
import SafariServices

class AppDetailViewController: UIViewController {
    
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var getButton: UIButton!
    @IBOutlet weak var devLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var appModel: AppModel?
    var appData = AppData.getData()
    var name = [String]()
    var urlName = ""
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(urlName)
        
        collectionView.dataSource = self
        
        if let result = appModel {
            coverImage.image = result.thumb
            titleLabel.text = result.title
            devLabel.text = result.developer
            descriptionLabel.text = result.description
        }
        
        coverImage.layer.cornerRadius = 8
        coverImage.clipsToBounds = true
        
        getButton.layer.cornerRadius = 8
        
        collectionView.register(UINib(nibName: "ImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ImageCollectionIdentifier")
        collectionView.reloadData()
    }
    
    @IBAction func installTapped(_ sender: UIButton) {
        if let url = URL(string: urlName) {
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true
            
            let goToSafari = SFSafariViewController(url: url)
            present(goToSafari, animated: true, completion: nil)
        }
        
    }
    
}

//MARK: -UICollectionViewDataSource
extension AppDetailViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionIdentifier", for: indexPath) as! ImageCollectionViewCell
        if let appModel = appModel {
            name.append(appModel.image.first)
            name.append(appModel.image.second)
            name.append(appModel.image.third)
            name.append(appModel.image.fourth)
            name.append(appModel.image.fifth)
            urlName = appModel.url
        }
        
        let imageCell = name[indexPath.item]
        cell.imageCollection.image = UIImage(named: imageCell)
        return cell
    }
}
