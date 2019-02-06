//
//  ViewController.swift
//  ElementQuiz
//
//  Created by 文盛業 on 2019/02/06.
//  Copyright © 2019 Sungup Priv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view, typically from a nib.
    currentElementIndex = 0

    updateElement()
  }

  /// Outlets
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var answerLabel: UILabel!
  @IBOutlet weak var chemicalWeight: UILabel!

  /// Controls
  @IBAction func showAnswer(_ sender: UIButton) {
    let engName = elements[currentElementIndex].name
    let latinName = elements[currentElementIndex].latin
    let atomicWeight = elements[currentElementIndex].atomicWeight
  
    answerLabel.text = "\(engName) / \(latinName)"
    chemicalWeight.text = String(format: "%.2f g/mol", atomicWeight)
  }

  @IBAction func gotoNextElement(_ sender: UIButton) {
    currentElementIndex += 1

    if currentElementIndex >= elements.count {
      currentElementIndex = 0
    }

    updateElement()
  }

  /// Properties
  var currentElementIndex: Int = 0

  /// Methods
  func updateElement() {
    answerLabel.text = "?"
    chemicalWeight.text = "Atomic Weight?"

    imageView.image = UIImage(named: elements[currentElementIndex].imageName)
  }
}
