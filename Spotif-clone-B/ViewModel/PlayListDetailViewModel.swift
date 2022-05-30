//
//  PlayListDetailViewModel.swift
//  Spotif-clone-B
//
//  Created by MAC38 on 20/05/22.
//

import Foundation

class PlayListDetailViewModel{
    let request: Request =  Request()
    var playlistDetail: PlayListDetail?=nil
    
    func getPlaylistDetail(id:String)async{
        let data = await request.getDataFromAPI(url: "users/12173307072/playlists/\(id)")
        if data != nil{
            if let decoder = try? JSONDecoder().decode(PlayListDetail.self,from :data!){
                DispatchQueue.main.async(execute: {
                    self.playlistDetail=decoder
                })
                
            }
        }
    }
}
