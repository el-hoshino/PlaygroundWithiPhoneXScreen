//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let controller = IPhoneXScreenController()
//controller.rotate(.left)
PlaygroundPage.current.liveView = controller.view

let safeAreaView = UIView()
safeAreaView.backgroundColor = .green
controller.view.addSubview(safeAreaView)
safeAreaView.frame = controller.view.bounds(inside: .safeArea)

let layoutMarginsView = UIView()
layoutMarginsView.backgroundColor = .yellow
controller.view.addSubview(layoutMarginsView)
layoutMarginsView.frame = controller.view.bounds(inside: .layoutMargins)
