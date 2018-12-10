//
//  ViewController.swift
//  Generating_And_Priniting_Inverse_Prime
//
//  Created by Sujananth on 12/10/18.
//  Copyright © 2018 sujananth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let primeNumberList: [Int] = self.genertePrimeNumbersUpto(150)
        var reversedPrimeNuberList: [Int] = []
        
        for primeNumberIndex in 0..<primeNumberList.count {
            reversedPrimeNuberList.append(primeNumberList[(primeNumberList.count - 1) - primeNumberIndex])
        }
        
        print(reversedPrimeNuberList)
    }
    
    
    func genertePrimeNumbersUpto(_ n: Int) -> [Int] {
        var i: Int = 2
        var primeNumberList: [Int] = []
        
        if( n > 2) {
            while i <= n {
                if(isPrime(i)) {
                    print(i)
                    primeNumberList.append(i)
                }
                i += 1
            }
        }
        
        return primeNumberList
    }
    
    func isPrime(_ n: Int) -> Bool {
        guard n >= 2     else { return false }
        guard n != 2     else { return true  }
        guard n % 2 != 0 else { return false }
        return !stride(from: 3, through: Int(sqrt(Double(n))), by: 2).contains { n % $0 == 0 }
    }
    
}

