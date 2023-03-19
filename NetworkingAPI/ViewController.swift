//
//  ViewController.swift
//  NetworkingAPI
//
//  Created by Amr El-Fiqi on 19/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Class Methods.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getUserPosts { response in
            print("Response: \(response)")
        }
    }
    
    func getUserPosts(completionHandler: @escaping (_ response: [userInfo]) -> Void) {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("error: \(error)")
            } else if let responseData = data {
                do{
                    let decoder = JSONDecoder()
                    let response = try decoder.decode([userInfo].self, from: responseData)
                    print("Fuck yeaaah: \(response)")
                    completionHandler(response)
                } catch{
                    print("Catch Error: \(error)")
                }
            }
            
        }.resume()
    }
}
//
//
//    func getData(completionHandler: @escaping (_ response: userInfo) -> Void) {
//
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts" ) else {return}
//
//        URLSession.shared.dataTask(with: url) { data, response, error in
//
//            let decoder = JSONDecoder()
//            let response  = try decoder.decode([userInfo].self, from: responseData)
//        }.resume()
//    }


