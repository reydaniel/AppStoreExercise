//
//  ViewController.swift
//  AppStore
//
//  Created by ReyDaniel on 02/06/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var featuredImage: UIImageView!
    @IBOutlet weak var appTableView: UITableView!
    
    var appData = AppData.getData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appTableView.dataSource = self
        appTableView.delegate = self
        
        title = AppReusable.titleBar
        featuredImage.image = UIImage(named: AppReusable.featuredImage)
        featuredImage.layer.cornerRadius = 12
        featuredImage.clipsToBounds = true
        
        appTableView.register(UINib(nibName: AppReusable.cellNibName, bundle: nil), forCellReuseIdentifier: AppReusable.cellIdentifier)
    }
}

//MARK: -UITableDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = appTableView.dequeueReusableCell(withIdentifier: AppReusable.cellIdentifier, for: indexPath) as? AppCell {
            let app = appData[indexPath.row]
            cell.appTitle.text = app.title
            cell.appDescription.text = app.description
            cell.coverImage.image = app.thumb
            cell.coverImage.layer.cornerRadius = 8
            cell.coverImage.clipsToBounds = true
            return cell
        } else {
            return UITableViewCell()
        }
    }
}

//MARK: --UITextViewDelegate
extension ViewController: UITextViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let appDetailVC = AppDetailViewController(nibName: "AppDetailViewController", bundle: nil)
        appDetailVC.appModel = appData[indexPath.row]
        navigationController?.pushViewController(appDetailVC, animated: true)
    }
}
