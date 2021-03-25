//
//  ViewController.swift
//  SudhanshuDemo
//
//  Created by Mac on 24/03/21.
//  Copyright © 2021 Sudhanshu. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    //MARK:-Variables
    lazy var categoriesArray:[CategoriesModel] = []
    
    //MARK:-Outlets
    @IBOutlet weak var tblView: UITableView!
    
    //MARK:-Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.getDatafromJsonFile(fileName: "menu")
        // Do any additional setup after loading the view.
    }
    
    
    //MARK:-Setup
    
    func setup(){
        self.tblView.register(UINib(nibName: "CategorySectionView", bundle: nil), forHeaderFooterViewReuseIdentifier: "CategorySectionView")
        self.tblView.sectionHeaderHeight = UITableView.automaticDimension;
        self.tblView.estimatedSectionHeaderHeight = 35;
    }
    
    func getDatafromJsonFile(fileName:String){
        if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                print(jsonResult)
                if let categoriesArrayData = jsonResult as? [[String:Any]]{
                    self.categoriesArray = categoriesArrayData.map({CategoriesModel.init(with: $0)})
                }
                DispatchQueue.main.async {
                    self.tblView.reloadData()
                }
            } catch {
                print("error")
                // handle error
            }
        }
    }
}
    
//MARK:-TableView Datasource and Delegates
extension ViewController : UITableViewDataSource,UITableViewDelegate{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.categoriesArray.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CategorySectionView") as! CategorySectionView
        headerView.categoryNameLbl.text = self.categoriesArray[section].name
        headerView.expandBtn.tag = section
        headerView.expandBtn.addTarget(self, action: #selector(expandBtnAction), for: .touchUpInside)
        headerView.expandBtn.setImage(self.categoriesArray[section].isSelected ? #imageLiteral(resourceName: "chevron-up"):#imageLiteral(resourceName: "chevron-down"), for: .normal)
        return headerView
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.categoriesArray[section].isSelected{
            return self.categoriesArray[section].sub_category.count
        }
        else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CategoriesTableViewCell", for: indexPath) as? CategoriesTableViewCell else{ return UITableViewCell() }
        cell.subCategoryLbl.text = self.categoriesArray[indexPath.section].sub_category[indexPath.row].name
        cell.displayLbl.text = self.categoriesArray[indexPath.section].sub_category[indexPath.row].display_name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    @objc func expandBtnAction(sender:UIButton){
        self.categoriesArray[sender.tag].isSelected = !self.categoriesArray[sender.tag].isSelected
//        DispatchQueue.global(qos: .userInitiated).async {
//            // Call your function here
//            DispatchQueue.main.async {
//                // Update UI
//                self.tblView.reloadData()
//            }
//        }
       // DispatchQueue.main.async {
       // DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.tblView.reloadData()

            // Change `2.0` to the desired number of seconds.
           // Code you want to be delayed
       // }
            //self.tblView.reloadSections(IndexSet(integer: sender.tag), with: .automatic)
//            let indexes = (0..<self.categoriesArray[sender.tag].sub_category.count).map { IndexPath(row: $0, section: sender.tag) }
//            self.tblView.reloadRows(at: indexes, with: .automatic)
        //}
        
    }
    
}


