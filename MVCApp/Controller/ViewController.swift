//
//  ViewController.swift
//  MVCApp
//
//  Created by Tafani Rabbani on 22/06/22.
//

import UIKit
import SwiftUI

//TODO: DONE!!!

class ViewController: UIViewController {

    @IBOutlet weak var zoomTableView: UITableView!
    
    var arrZoom: [ZoomBackground] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Zoom Background List"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupTable()
        addData()
        
    }

    //TODO: Setup Table
    func setupTable(){
        
        let nib = UINib(nibName: "ZoomTableViewCell", bundle: nil)
        zoomTableView.register(nib, forCellReuseIdentifier: "custom1")
        
        zoomTableView.register(SwiftUITableCell<SwiftUICell>.self, forCellReuseIdentifier: "custom2")
        
        zoomTableView.delegate = self
        zoomTableView.dataSource = self
        
        zoomTableView.layer.cornerRadius = 10
    }
    
    //TODO: Read Data
    func addData(){
        arrZoom = DummyDB.shared.fetchData()
        zoomTableView.reloadData()
    }
    
}


extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrZoom.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row % 2 == 0{
            
            let cell = zoomTableView.dequeueReusableCell(withIdentifier: "custom1") as! ZoomTableViewCell
            cell.zoomBackground = arrZoom[indexPath.row]
            return cell
        }else{
//            let cell = zoomTableView.dequeueReusableCell(withIdentifier: "custom1") as! ZoomTableViewCell
//            cell.zoomBackground = arrZoom[indexPath.row]
//            return cell
            let cell = zoomTableView.dequeueReusableCell(withIdentifier: "custom2") as! SwiftUITableCell<SwiftUICell>
            cell.host(SwiftUICell(zoomBackground: arrZoom[indexPath.row]), parent: self)
            return cell
        }
        
    }
    
    
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return zoomTableView.frame.height / 7
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        zoomTableView.deselectRow(at: indexPath, animated: true)
        
        let view = DetailView(zoomBackground: arrZoom[indexPath.row])
        let vc = UIHostingController(rootView: view)
//        navigationController?.present(vc, animated: true)
        navigationController?.show(vc, sender: nil)
    }
}
