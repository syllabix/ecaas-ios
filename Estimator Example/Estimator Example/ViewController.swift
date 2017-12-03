//
//  ViewController.swift
//  Estimator Example
//
//  Created by Tom Stoepker on 12/3/17.
//  Copyright © 2017 Two Men and a Truck. All rights reserved.
//

import UIKit
import Ecaas

class ViewController: UIViewController {

	@IBOutlet weak var estimatedHours: UITextField!
	@IBOutlet weak var hourlyRate: UITextField!
	@IBOutlet weak var moveDate: UITextField!
	@IBOutlet weak var estimateTotals: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func moveTypeSelected(_ sender: Any) {
	}
	
	@IBAction func updateEstimate(_ sender: Any) {
	}
}

