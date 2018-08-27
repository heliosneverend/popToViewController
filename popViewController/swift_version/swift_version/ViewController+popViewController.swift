//
//  ViewController+popViewController.swift
//  swift_version
//
//  Created by helios on 2018/8/27.
//  Copyright © 2018年 helios. All rights reserved.
//

import Foundation
extension ViewController {
    func backToViewController(className: String, animated: Bool) {
        if ((self.navigationController) != nil) {
            let controllers: Array = (self.navigationController?.viewControllers) ?? []
            let res = controllers.filter { (item) -> Bool in
                guard let aClass = NSClassFromString(className) else {
                    return false
                }
                return item.isKind(of: aClass)
            }
            if (res.count > 0) {
                self.navigationController?.popToViewController(res[0], animated: animated)
            }
        }
    }
}
