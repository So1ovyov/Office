//
//  DataManager.swift
//  Office
//
//  Created by Максим Соловьёв on 22.12.2020.
//

import Foundation

class DataManager {
    
    static func getPerson() -> [Person] {
        
        let persons = [Person(firstName: "Григорий", lastName: "Пагеев", email: "pchuh@mail.ru", phoneNumber: "+7(903)124-05-04"),
                       Person(firstName: "Мария", lastName: "Тетенёва", email: "karamelka@rambler.ru", phoneNumber: "+7(903)154-25-80"),
                       Person(firstName: "Иван", lastName: "Царицын", email: "poghamp@yandex.ru", phoneNumber: "+7(916)229-03-14"),
                       Person(firstName: "Григорий", lastName: "Михайлов", email: "bagaquake@mail.ru", phoneNumber: "+7(919)335-35-34"),
                       Person(firstName: "Ольга", lastName: "Штефанко", email: "meepoDoto@rambler.ru", phoneNumber: "+7(906)654-15-69"),
                       Person(firstName: "Полина", lastName: "Быкова", email: "jobjob@mail.ru", phoneNumber: "+7(903)223-35-84"),
                       Person(firstName: "Эдуард", lastName: "Миллер", email: "jugger@mail.ru", phoneNumber: "+7(913)228-97-45"),
                       Person(firstName: "Максим", lastName: "Чалик", email: "ivanko@mail.ru", phoneNumber: "+7(909)143-66-87"),
                       Person(firstName: "Александр", lastName: "Булеев", email: "fabrikaeffekt@yandex.ru", phoneNumber: "+7(916)841-09-93"),
                       Person(firstName: "Екатерина", lastName: "Дрёмова", email: "oklick@rambler.ru", phoneNumber: "+7(906)203-46-54")]
        return persons
    }
    
}
