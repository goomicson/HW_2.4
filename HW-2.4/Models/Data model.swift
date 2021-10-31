//
//  Data model.swift
//  HW-2.4
//
//  Created by Сергей on 30.10.2021.
//

import Foundation
import UIKit




struct User {
    var login: String
    var passwrd: String
    
    var profile: Profile
    var interests: Interests
   
}

struct Profile {
    var firstName: String
    var secondName: String
    var age: Int
    var degree: Degree
}

enum Degree: String {
    case child = "Haven't studied yet"
    case schoolchild = "School"
    case college = "College"
    case bachelor = "Bachelor"
    case master = "Master"
    case PhD = "Phd"
    case Doctor = "Doctor"
}

struct Interests {
    var music: Article
    var tech: Article
    var movies: Article
    var theatre: Article
    var design: Article
    var economy: Article
    var education: Article
    var cars: Article
    var swift: Article
}

struct Article {
    var head: String
    var body: String
    var image: UIImage
}


let user1:User = .init(login: "User",
                       passwrd: "Passwd",
                       profile: .init(firstName: "Sergei", secondName: "Denisenko", age: 22, degree: .college),
                       interests: .init(music: .init(head: "Music", body: "Я играю на гитаре и слушаю очень много музыки в совершенно разных жанрах. У меня нет красивой фотографии моей гитары, поэтому вложу эту фотку 😄", image: UIImage(named: "guitar.jpg")!),
                                        
                                        tech: .init(head: "Tech", body: "Технологиями я начал увлкаться с 14 лет. Как сейчас помню: я пытался скачать какую-то игру и подхватил winLocker. После того как дядя волшебным образом его убрал, я начал интересоваться тем, как компьютер устроен и вот, я здесь.", image: UIImage(named: "admin.jpg")!),
                                        
                                        movies: .init(head: "Movies", body: "Кино я очень люблю, но смотрю его довольно мало. Я довольно ленив и не могу заставить себя смотреть все подряд. Но мне кажется, это мое преимущество, потому что я не вспомню случаев, когда я бы был разочарован фильмом или сериалом.", image: UIImage(named: "movie.jpg")!),
                                        
                                        theatre: .init(head: "Theatre", body: "Один из самых приятных досугов для меня: поход в театр. Мне очень нравится местный Самарский драмтеатр. Я не очень разбираюсь в театральном исскустве, но по моему в нем прекрасно все: актеры, пьесы, декорации, свет. Даже сидения удобные. ☺️", image: UIImage(named: "theatre.jpg")!),
                                        
                                        design: .init(head: "Design", body: "Мое увлечение дизайном началось недавно, когда меня заинтересовал вопрос: Почему iOS macOS такие красивые, плавные и удобные, а остальные нет? Сейчас я и сам кое-что умею, например делать небольшие обложки для плейлистов, простенькие плакаты и схемы в Affinity Publisher.", image: UIImage(named: "design.jpg")!),
                                        
                                        economy: .init(head: "Economy", body: "Тоже мое недавнее увлечение. С экономикой как наукой я познакомился благодаря лекциям Сергея Гуриева на YouTube. Настолько просто и понятно объяснять сложные вещи — талант", image: UIImage(named: "economy.jpg")!),
                                        
                                        education: .init(head: "Education", body: "Я постоянно изучаю что-то новое. Я даже заметил за собой, что если я отдыхаю, то машинально выбираю контент который может меня чему-то научить.", image: UIImage(named: "education.jpg")!),
                                        
                                        cars: .init(head: "Cars", body: "Автомобилями я увлекаюсь с детства. Любимая марка, естественно Porsche.", image: UIImage(named: "cars.jpg")!),
                                        swift: .init(head: "Swift", body: "Some text here", image: UIImage(named: "swift.jpg")!)))
