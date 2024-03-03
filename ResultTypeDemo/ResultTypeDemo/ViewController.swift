//
//  ViewController.swift
//  ResultTypeDemo
//
//  Created by Chetan Agarwal on 17/01/21.
//

import UIKit
struct Course: Decodable{
    let id: Int
    let name: String
    let imageUrl: String
    let number_of_lessons: Int
}

class ViewController: UIViewController {
    let urlStr = "https://api.letsbuildthatapp.com/jsondecodable/courses"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        fetchCourseJson { (res) in
            switch res {
            case .failure(let e):
                print("Some error occur while fetching response",e)
            case .success(let courses):
                courses.forEach { print( $0.name) }
            }
        }
    }
    
    private func fetchCourseJson(completion: @escaping (Result<[Course], Error>) -> ()){
        guard let url = URL(string: urlStr) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            if let e = err{
                completion(.failure(e))
                return
            }
            
            //success case
            
            do {
                let courses = try JSONDecoder().decode([Course].self, from: data!)
                completion(.success(courses))
            } catch let err {
                print("Something went wrong", err)
                completion(.failure(err))
            }
        }.resume()
    }
}


//Mark:- Ambiguous Code  - for testing
//class ViewController: UIViewController {
//    let urlStr = "https://api.letsbuildthatapp.com/jsondecodable/courses"
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        fetchCourseJson { (courses, err) in
//            if let e = err{
//                print("failed to fetch courses", e)
//            }
//            courses?.forEach {print($0.name)}
//        }
//    }
//
//    private func fetchCourseJson(completion: @escaping ([Course]?, Error?) -> ()){
//        guard let url = URL(string: urlStr) else { return }
//        URLSession.shared.dataTask(with: url) { (data, response, err) in
//            if let e = err{
//                completion(nil, e)
//                return
//            }
//
//            //success case
//
//            do {
//                let courses = try JSONDecoder().decode([Course].self, from: data!)
//                completion(courses,nil)
//            } catch let err {
//                print("Something went wrong", err)
//                completion(nil, err)
//            }
//        }.resume()
//    }
//}

