//
//  ViewController.swift
//  BridgePattern
//
//  Created by KevinLin on 2015/6/29.
//  Copyright (c) 2015年 Garmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var SwapButton: UIButton!
    @IBOutlet weak var feature1: UILabel!
    @IBOutlet weak var changeButton1: UIButton!
   
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var SwapButton2: UIButton!
    
    let watch: GarminWatch
    
    init(watch: GarminWatch, viewNibName: String) {
        self.watch = watch
        super.init(nibName: viewNibName, bundle: nil)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func operation() {
        let string = watch.operation()
        if watch is FR620 {
            label2.text = string
        } else if watch is Fenix3 {
            feature1.text = string
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        operation()
        navigationController?.navigationBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func change() {
        if watch.imp is GPS {
            watch.imp = RunnerDynamics()
        } else {
            watch.imp = GPS()
        }
        operation()
    }
    
    @IBAction func swap1() {
        
        let imp = self.watch.imp
        let watch = FR620(imp: imp)
        
        let VC = ViewController(watch: watch, viewNibName: "FR620")
        VC.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
        let naviVC = UINavigationController(rootViewController: VC)
        navigationController?.presentViewController(naviVC, animated: true, completion: nil)
        
    }
    
    @IBAction func swap2() {
        
        let imp = self.watch.imp
        let watch = Fenix3(imp: imp)
        
        let VC = ViewController(watch: watch, viewNibName: "Fenix3")
        VC.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
        let naviVC = UINavigationController(rootViewController: VC)
        navigationController?.presentViewController(naviVC, animated: true, completion: nil)
    }
    
    
}

