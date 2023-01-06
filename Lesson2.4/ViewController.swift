//
//  ViewController.swift
//  Lesson2.4
//
//  Created by Alex Pavlyuk on 1/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets.
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Here we working on Interface action with segmentedControl.
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        setupMainLabel()
        
    }
    // MARK: - IB Actions.
    
    @IBAction func segmentedControlAction() {
    }
    
    // MARK: - Private method.
    private func setupMainLabel() {
        // we have to move here all logical parameters.
        mainLabel.text = "Ну Погоди!!!"
        mainLabel.font = UIFont.systemFont(ofSize: 35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
    }
}
