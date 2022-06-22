//
//  ViewController.swift
//  MVCApp
//
//  Created by Tafani Rabbani on 22/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zoomTableView: UITableView!
    
    
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
        zoomTableView.delegate = self
        zoomTableView.dataSource = self
        zoomTableView.layer.cornerRadius = 10
    }
    
    //TODO: Read Data
    func addData(){
        
    }
    
}


extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return zoomTableView.frame.height / 8
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        zoomTableView.deselectRow(at: indexPath, animated: true)
    }
}
