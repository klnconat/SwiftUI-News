//
//  NetworkManger.swift
//  H4X0R News
//
//  Created by Onat KILINÇ on 2.07.2024.
//

import Foundation

class NetworkManager: ObservableObject {

    @Published var postList =  [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let resultList = try decoder.decode(Result.self, from: safeData)
                            DispatchQueue.main.async {
                                self.postList = resultList.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
