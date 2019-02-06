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

  /// Controls
  @IBAction func showAnswer(_ sender: UIButton) {
    answerLabel.text = elementsList[currentElementIndex]
  }

  @IBAction func gotoNextElement(_ sender: UIButton) {
    currentElementIndex += 1

    if currentElementIndex >= elementsList.count {
      currentElementIndex = 0
    }

    updateElement()
  }

  /// Properties
  var currentElementIndex: Int = 0
  var elementsList = ["Carbon", "Gold", "Chlorine", "Sodium"]

  /// Methods
  func updateElement() {
    answerLabel.text = "?"
    imageView.image = UIImage(named: elementsList[currentElementIndex])
  }
}
