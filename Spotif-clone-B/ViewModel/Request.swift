//
//  Request.swift
//  Spotif-clone-B
//
//  Created by MAC12 on 14/05/22.
//

import Foundation

class Request {
    
    let token  = "BQBJVOH5anBRhMwpr0lx0RM-6MuMSE2KWJKzWctq4ctbuIrXLtKbd-lVwhyNnmilEsasIYyWd4iux5zb_FTPgXJ7_E3z8pStuFW7VjnuJyJrsaChrAeT_J77utEcuxz005WZZ-XiwyOgFMlWCs7yfmPQmRk1Nowppg0"
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    func getDataFromAPI(url: String) async -> Data? {
           do {
               let urlParse = url.replacingOccurrences(of: " ", with: "%20")
               var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(urlParse)")!)
               request.httpMethod = "GET"
               request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
               
               let (data, _) = try await URLSession.shared.data(for: request)
               
               return data
           } catch {
               return nil
           }
       }
       
   }
