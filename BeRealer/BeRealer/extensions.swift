//
//  extensions.swift
//  BeRealer
//
//  Created by keenan ray on 3/27/23.
//

import Foundation
extension DateFormatter {
    static var postFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }()
}
