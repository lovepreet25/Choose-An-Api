//
//  NewsApi.swift
//  ChooseAnApi
//
//  Created by Macbook on 2022-10-17.
//

import Foundation
  class NewsFeed{
   static private let urlString = "https://newsapi.org/v2/top-headlines?country=us&apiKey=e9c1d19fec4745fc8a9595860d293ce4" ;
     static private let session: URLSession = {
        let configure = URLSessionConfiguration.default
        return URLSession(configuration: configure)
    }()
    
    static public func fetchDir(){
        guard
            let url = URL(string: urlString)
                
        else
        {
            preconditionFailure( "unable to covert string to url: \(urlString)")
            
        }
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) {
            data, response, error in
            
            if let data = data {
                do {
                    let jsonData = try JSONSerialization.jsonObject(with: data)
                    print (jsonData)
                }
                catch let erorr {
                    print("there is an erorr")
                }
                }
            
            else if let error = error {
                print(" datatask is showing error, fetchDir: \(error)")
            }else {
                print ("something went wrong when fetching the directory: \(String(describing: response))")
                
            }
        }
        task.resume()
    }
}
