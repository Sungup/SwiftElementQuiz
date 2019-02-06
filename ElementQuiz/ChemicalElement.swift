//
//  ChemicalElement.swift
//  ElementQuiz
//
//  Created by 文盛業 on 2019/02/06.
//  Copyright © 2019 Sungup Priv. All rights reserved.
//

import Foundation

struct ChemicalElement {
  let symbol: String
  let name: String
  let latin: String
  let atomicWeight: Double
  let imageName: String
}

let elements = [
  ChemicalElement(symbol: "C", name: "Carbon", latin: "Carbonium",
                  atomicWeight: 12.0107, imageName: "Carbon"),
  ChemicalElement(symbol: "Au", name: "Gold", latin: "Aurum",
                  atomicWeight: 196.96655, imageName: "Gold"),
  ChemicalElement(symbol: "Cl", name: "Chlorine", latin: "Chlorium",
                  atomicWeight: 35.453, imageName: "Chlorine"),
  ChemicalElement(symbol: "Na", name: "Sodium", latin: "Natrium",
                  atomicWeight: 22.989770, imageName: "Sodium")
]
