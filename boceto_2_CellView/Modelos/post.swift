//
//  File.swift
//  boceto_2_CellView
//
//  Created by alumno on 10/9/24.
//

import UIKit

struct Post: Codable {
    //Decodable: Permite convertir información json a un modelo de swift
    //Encodable: Permite convertir un modelo de swift a JSON
    //Codable: Ambas al mismo tiempo
    var id: Int
    var userId: Int
    var title: String
    var body: String
}


