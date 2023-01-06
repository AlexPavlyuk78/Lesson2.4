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
    @IBOutlet var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Here we working on Interface action with segmentedControl.
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        setupMainLabel()
        
    }
    // MARK: - IB Actions.
    
    @IBAction func segmentControlAction() {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "The first segment is selected"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "The second segment is selected"
            mainLabel.textColor = .blue
        default:
            mainLabel.text = "The third segment is selected"
            mainLabel.textColor = .yellow
        }
    }
    
    // MARK: - Private method.
    private func setupMainLabel() {
        // we have to move here all logical parameters.
        
        mainLabel.text = "Cat & Fox !!!"
        mainLabel.font = UIFont.systemFont(ofSize: 35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
    }
}
