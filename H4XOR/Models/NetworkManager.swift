//
//  NetworkManager.swift
//  H4XOR
//
//  Created by Boughdiri Dorsaf on 26/12/2022.
//

import Foundation

class NetworkManager: ObservableObject{
    
    @Published var posts = [Post]()
    
    let urlString = "https://hn.algolia.com/api/v1/search?tags=front_page"
    
    func fetchData() {
        if let url = URL(string: urlString) {
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error)  in
                if error != nil {
                    print("Problem in API")
                }
                
                let decoder = JSONDecoder()
                if let safeData = data {
                    do{
                        let results = try decoder.decode(PostsModel.self, from: safeData)
                        DispatchQueue.main.async {
                            self.posts = results.hits
                        }
                    }catch {
                        print(error)
                    }
                }
            }
            task.resume()
            
        }
    }
}
