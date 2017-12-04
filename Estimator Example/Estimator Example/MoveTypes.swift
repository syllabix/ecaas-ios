//
//  MoveTypes.swift
//  Estimator Example
//
//  Created by Tom Stoepker on 12/4/17.
//  Copyright © 2017 Two Men and a Truck. All rights reserved.
//

import Foundation

class MoveType: NSObject, EcaasMoveTypeProtocol {
	
	private var name: String = ""
	private var multiplier: String = ""
	private var taxRate: String = ""
	
	init(name: String, multiplier: String, taxRate: String) {
		self.name = name
		self.multiplier = multiplier
		self.taxRate = taxRate
	}
	
	func getMultiplier() -> String! {
		return multiplier
	}
	
	func getName() -> String! {
		return name
	}
	
	func getTaxRate() -> String! {
		return taxRate
	}
}
