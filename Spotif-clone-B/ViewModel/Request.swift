//
//  Request.swift
//  Spotif-clone-B
//
//  Created by MAC12 on 14/05/22.
//

import Foundation

class Request {
    
    let token  = "BQA78MJ5kf3i5Nf7TKjmQZM32Ae9aWIf9Km-DgSqh38EEVznVDNufQsUCS0igqzvFj35EXokOfntESfnqeJ_NIF0u0oWa55plisTK_RCzJQvAR1obs_PWB6HJE6RW8uxUCGTSXux41P8vsjfSfypU9nmJyTOnDLA4DiSSfk_v0-0XdK35hSVqA"
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    func getDataFromAPI(url: String) async -> Data? {
        do {
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(url)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
    
}
