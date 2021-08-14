//
//  ViewController.swift
//  Marwa_A_TextListExercise
//
//  Created by Student on 8/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func WriteText(_ sender: Any) {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urls.last?.appendingPathComponent("file.text")
        do{
            try typeTextHere.text?.write(to:url!, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Error Writing File 😟")
        }
    
    }
    
    @IBAction func ReadText(_ sender: Any) {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urls.last?.appendingPathComponent("file.text")
        do {
            let fileContent = try String(contentsOf: url!, encoding: String.Encoding.utf8)
            displayTextHere.text = fileContent
        } catch{
            print("Error Reading File 😟")
    
        }
    }
    
    @IBOutlet var typeTextHere: UILabel!
    
   
    @IBOutlet var displayTextHere: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        typeTextHere.text = "Type New Text"
        displayTextHere.text = ""
    
    }


}

    
    

