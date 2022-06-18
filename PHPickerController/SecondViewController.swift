//
//  SecondViewController.swift
//  PHPickerController
//
//  Created by Yogesh Patel on 17/06/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController{
            if let sheet = vc.sheetPresentationController{
                sheet.detents = [.medium(), .large()] // Sheet style
                sheet.prefersScrollingExpandsWhenScrolledToEdge = false // Inside Scrolling
                sheet.prefersGrabberVisible = true // Grabber button
                sheet.preferredCornerRadius = 24 // Radius
                sheet.largestUndimmedDetentIdentifier = .medium //Avoid dismiss
            }
            
            self.navigationController?.present(vc, animated: true)
        }
    }

}
