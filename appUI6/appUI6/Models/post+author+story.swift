//
//  post+author+story.swift
//  appUI6
//
//  Created by Giuseppe Grammatico on 24/06/2021.
//

import UIKit

struct Post {
    var description: String
    var image: UIImage
    var author: Author
    var luogo: String
    var like : String
}

struct Author {
    var nickname: String
    var image: UIImage
}
 
struct Story {
    var author: Author
    var image: UIImage
}






extension Post {
    static func mocks() -> [Post] {
    [
    Post(description: "Greece time", image: #imageLiteral(resourceName: "post1"), author: Author(nickname: "Vera Jobs", image: #imageLiteral(resourceName: "author1")), luogo: "Santorini", like: "Piace a 480 persone"),
    Post(description: "TAAAAAC", image: #imageLiteral(resourceName: "post2"), author: Author(nickname: "Gianluigi Beretta", image: #imageLiteral(resourceName: "author2")), luogo: "Milano", like: "Piace a 192 persone"),
    Post(description: "Mare e bella vita", image: #imageLiteral(resourceName: "post3"), author: Author(nickname: "Carmela Cuomo", image: #imageLiteral(resourceName: "author3")), luogo: "San Vito Lo Capo", like: "Piace a 260 persone")
    ]
}
}

extension Story {
    static func mocks() -> [Story] {
    [
        .init(author: Author(nickname: "Vera", image: #imageLiteral(resourceName: "author1")), image: #imageLiteral(resourceName: "post1")),
        .init(author: Author(nickname: "Gianluigi", image: #imageLiteral(resourceName: "author2")), image: #imageLiteral(resourceName: "post2")),
        .init(author: Author(nickname: "Carmela", image: #imageLiteral(resourceName: "author3")), image: #imageLiteral(resourceName: "post3"))
    ]
}
}




