//import Foundation
//
//
//class Person: Equatable, Hashable {
//    let id: Int
//    let countryId: Int
//    var name: String
//    
//    init(id: Int, countryId: Int, name: String) {
//        self.id = id
//        self.countryId = countryId
//        self.name = name
//    }
//    
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//        hasher.combine(countryId)
//    }
//    
//    static func == (lhs: Person, rhs: Person) -> Bool {
//        return lhs.id == rhs.id &&  lhs.countryId == rhs.countryId
//    }
//    
//}
//
//let ninja = Person(id: 1, countryId: 823, name: "Steven")
//let caster = Person(id: 1, countryId: 233, name: "Max")
//let runner = Person(id: 1, countryId: 444, name: "Mario")
//let architect = Person(id: 1, countryId: 544, name: "Mario")
//
//let team: Set<Person> = [ninja, caster, runner, architect]
//
//team.forEach({ member in
//    print("\(member.name)")
//})
//
