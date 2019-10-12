//
//  UserWeightDataViewController.swift
//  GoalGraph
//
//  Created by Jake Garcia on 10/5/19.
//  Copyright © 2019 Jake Garcia. All rights reserved.
//

import UIKit
import RealmSwift
import Charts

class UserWeightDataViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var chartView: LineChartView!
    
    var selectedUser: User?
    
    let realm = try! Realm()
    
    var weights = List<WeightInput>()
    
    var lineChartEntry = [ChartDataEntry]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWeights()
        updateGraph(weightData: weights)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
    }

    func loadWeights() {
//        weights = selectedUser?.weightData
        
        let weight1 = WeightInput()
        weight1.weight = 100
        let weight2 = WeightInput()
        weight2.weight = 110
        let weight3 = WeightInput()
        weight3.weight = 120
        
        weights.append(weight1)
        weights.append(weight2)
        weights.append(weight3)
    }
    
    func updateGraph(weightData: List<WeightInput>) {
        
       
            
        for i in 0..<weights.count {
            
            let value = ChartDataEntry(x: Double(i), y: Double(weightData[i].weight))
            
            lineChartEntry.append(value)
        }
            
            let line1 = LineChartDataSet(entries: lineChartEntry, label: "Weight")
            
            line1.colors = [NSUIColor.black]
            
            let data = LineChartData()
            data.addDataSet(line1)
            chartView.data = data
        
    }

}
