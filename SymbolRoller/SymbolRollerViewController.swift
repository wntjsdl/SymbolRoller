//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by JuSun Kang on 2022/06/09.
//

import UIKit

class SymbolRollerViewController: UIViewController {

    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TO-DO:
        // - 심볼에서, 하나를 임의로 추출해서,
        // - 이미지와 텍스트를 설정을 한다
        
        button.tintColor = UIColor.systemPink
        reload()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func reload() {
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }

    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
