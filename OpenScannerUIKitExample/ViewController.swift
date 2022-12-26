//
//  ViewController.swift
//  OpenScannerUIKitExample
//
//  Created by Shubham Kamdi on 12/25/22.
//

import UIKit
import OpenScanner
class ViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let scanner = VissionView(self.containerView.frame)
        scanner.delegate = self
        self.containerView.addSubview(scanner)
        scanner.frame = self.containerView.bounds
    }

}
