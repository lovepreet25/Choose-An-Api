//
//  Universities.swift
//  ChooseAnApi
//
//  Created by Macbook on 2022-10-17.
//

import Foundation
class UniversitiesApi{
 static private let urlString = "https://api.publicapis.org/entries";
   static private let session: URLSession = {
      let configure = URLSessionConfiguration.default
      return URLSession(configuration: configure)
  }()
  
  static public func fetchUniDir(){
      guard
          let url = URL(string: urlString)
              
      else
      {
          preconditionFailure("unable to covert string to url: \(urlString)")
          
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
