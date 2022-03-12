//
//  Appetizer.swift
//  Appetizers
//
//  Created by Dmitry Sechkarenko on 22.02.2022.
//

import Foundation

struct Appetizer: Identifiable, Decodable {
    let id: Int
    let name: String
    let price: Double
    let imageURL: String
    let description: String
    let calories: Int
    let carbs: Int
    let protein: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           price: 6.99,
                                           imageURL: "",
                                           description: "Seasoned shrimp from the depths of the Atlantic Ocean.",
                                           calories: 450,
                                           carbs: 3,
                                           protein: 4)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne    = Appetizer(id: 0001,
                                           name: "Test Appetize 1",
                                           price: 6.99,
                                           imageURL: "",
                                           description: "Seasoned shrimp from the depths of the Atlantic Ocean.",
                                           calories: 450,
                                           carbs: 3,
                                           protein: 4)
    
    static let orderItemTwo   = Appetizer(id: 0002,
                                          name: "Test Appetize 2",
                                          price: 6.99,
                                          imageURL: "",
                                          description: "Seasoned shrimp from the depths of the Atlantic Ocean.",
                                          calories: 450,
                                          carbs: 3,
                                          protein: 4)
    
    static let orderItemThree = Appetizer(id: 0003,
                                          name: "Test Appetize 3",
                                          price: 6.99,
                                          imageURL: "",
                                          description: "Seasoned shrimp from the depths of the Atlantic Ocean.",
                                          calories: 450,
                                          carbs: 3,
                                          protein: 4)
    
    static let orderItems =  [orderItemOne, orderItemTwo, orderItemThree]
}
