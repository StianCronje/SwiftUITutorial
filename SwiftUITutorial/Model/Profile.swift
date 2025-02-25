//
//  Profile.swift
//  SwiftUITutorial
//
//  Created by Stian Cronje on 2/24/25.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications: Bool = true
    var seasonalPhoto = Season.winter
    
    var goalDate = Date()
    
    static let `default` = Profile(username: "stian")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String {
            rawValue
        }
    }
    
}
