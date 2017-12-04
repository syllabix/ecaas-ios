//
//  ViewController.swift
//  Estimator Example
//
//  Created by Tom Stoepker on 12/3/17.
//  Copyright © 2017 Two Men and a Truck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	private let localMove = MoveType(name: "Local", multiplier: "0.05", taxRate: "0.06")
	private let intlMove = MoveType(name: "International", multiplier: "0.25", taxRate: "0.31")

	//UI Bindings
	@IBOutlet weak var localButton: UIButton!
	@IBOutlet weak var intlButton: UIButton!
	@IBOutlet weak var estimatedHours: UITextField!
	@IBOutlet weak var hourlyRate: UITextField!
	@IBOutlet weak var moveDate: UITextField!
	@IBOutlet weak var estimateTotals: UILabel!
	
	//Constants for identifying buttons
	private let LOCAL_TAG = 1
	private let INTL_TAG = 2
	
	private var selectedMoveType: EcaasMoveTypeProtocol? {
		willSet(value) {
			guard let name = value?.getName() else {
				return
			}
			switch name {
			case "Local":
				localButton.backgroundColor = UIColor.cyan
				intlButton.backgroundColor = UIColor.lightGray
			case "International":
				localButton.backgroundColor = UIColor.lightGray
				intlButton.backgroundColor = UIColor.cyan
			default:
				break
			}
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}

	@IBAction func moveTypeSelected(_ sender: UIButton) {
		switch sender.tag {
		case LOCAL_TAG:
			selectedMoveType = localMove
		case INTL_TAG:
			selectedMoveType = intlMove
		default:
			break
		}
	}
	
	@IBAction func updateEstimate(_ sender: Any) {
		if let h = estimatedHours.text, let hours = Double(h) {
			let rate = hourlyRate.text
			let date = moveDate.text
			let details = EcaasNewJobDetails(hours, rate, date)
			let range = EcaasCalculateTotalCost(details, selectedMoveType)
			estimateTotals.text = "\(range?.low() ?? "$0.00") - \(range?.high() ?? "$0.00")"
		}
	}
}

