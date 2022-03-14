//
//  AlertItem.swift
//  Appetizers
//
//  Created by Dmitry Sechkarenko on 22.02.2022.
//

import SwiftUI

struct AlertItem: Identifiable {
    var id = UUID()
    var title: Text
    var message: Text
}

enum AlertContext {
    
    //MARK: - Network Errors
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                            message: Text("There is an error trying to reach the server. If this persists, please contact support."))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your internet connection."))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                            message: Text("Invalid response from the server. Please try again or contact support."))
    
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                            message: Text("The data received from the server was invalid. Please try again or contact support."))
    // MARK: - Account Alerts
    static let invalidForm      = AlertItem(title: Text("Invalid Form"),
                                            message: Text("Please ensure all fields in the form have been filled out."))
    
    static let invalidEmail     = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Invalid Email."))
    
    
    static let userSaveSuccess  = AlertItem(title: Text("Profile Saved"),
                                            message: Text("Successfully saved."))
    
    
    static let invalidUserData  = AlertItem(title: Text("Profile Error"),
                                            message: Text("There was an error saving or retrieving your profile."))
    
}
