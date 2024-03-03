
import UIKit

/*:
 
 # Table Of Content
 
 * 1. Getable - Constant Property
 * 2. Getable - Variable Property
 * 3. Getable - Computed Property
 * 4. Gettable - Private Set
 * 5. Gettable & Settable - Computed Property
 * 6. Gettable & Settable - Constant Property
 * 7. Gettable & Settable - only Get Defined
 * 8. TypeCasting - Differene between Get & Get Set
 
*/


/*:
 ### 1. Getable - Constant Property
 */
//
//protocol FullyNamed {
//    var fullName: String { get }
//}
//
//struct Detective: FullyNamed {
//    let fullName: String
//}
//
//let hercule = Detective(fullName: "Hercule Poirot")
//print(hercule.fullName) // returns "Hercule Poirot"

/*:
 ### 2. Getable - Variable Property
 */
//protocol FullyNamed {
//    var fullName: String { get }
//}
//
//struct Detective: FullyNamed {
//    var fullName: String
//}
//
//var bond = Detective(fullName: "Bond")
//print(bond.fullName) // returns "Bond"
//
//bond.fullName = "James Bond"
//print(bond.fullName) // returns "James Bond"


/*:
 ### 3. Getable - Computed Property
 */

//protocol FullyNamed {
//    var fullName: String { get }
//}
//
//struct Detective: FullyNamed {
//    fileprivate var name: String
//    var fullName: String {
//        return name
//    }
//}
//
//let batman = Detective(name: "Bruce Wayne")
//print(batman.fullName) // returns "Bruce Wayne"

/*:
 ### 4. Gettable - Private Set
 */

//protocol FullyNamed {
//    var fullName: String { get }
//}
//
//public struct Detective: FullyNamed {
//    public private(set) var fullName: String
//    
//    public init(fullName: String) {
//        self.fullName = fullName
//    }
//    
//    public mutating func renameWith(fullName: String) {
//        self.fullName = fullName
//    }
//}
//
//var holmes = Detective(fullName: "Holmes")
//print(holmes.fullName) // returns "Holmes"
//
//holmes.renameWith(fullName: "Sherlock Holmes")
//print(holmes.fullName) // returns "Sherlock Holmes"

/*:
 ### 5. Gettable & Settable - Computed Property
 */

//protocol FullyNamed {
//    var fullName: String { get }
//}
//
//struct Detective: FullyNamed {
//    fileprivate var name: String
//    var fullName: String {
//        get {
//            return name
//        }
//        set {
//            name = newValue
//        }
//    }
//}
//
//var Payne = Detective(name: "Payne")
//print(Payne.fullName) // returns "Payne"
//
//Payne.fullName = "Max Payne"
//print(Payne.fullName) // returns "Max Payne"

/*:
 ### 6. Gettable & Settable - Constant Property
 */
//
//protocol FullyNamed {
//    var fullName: String { get set }
//}
//
//struct Detective: FullyNamed {
//    let fullName: String
//}
//
//let Rorschach = Detective(fullName: "Walter Joseph Kovacs")
//// Error message: Type 'Detective' does not conform to protocol 'FullyNamed'
/*:
 ### 7. Gettable & Settable - only Get Defined
 */

//protocol FullyNamed {
//    var fullName: String { get set }
//}
//
//struct Detective: FullyNamed {
//    private var name: String
//    var fullName: String {
//        return name
//    }
//}
//
//var constantine = Detective(name: "John Constantine")
//// Error message: Type 'Detective' does not conform to protocol 'FullyNamed'

/*:
### TypeCasting - Differene between Get & Get Set
 */
protocol FullyNamed{
    var firstName: String {get}
    var lastName: String {get set}
}

struct SuperHero: FullyNamed{
    var firstName = "Super"
    var lastName = "Man"
}

var dcHero = SuperHero()
print(dcHero) // SuperHero(firstName: "Super", lastName: "Man")
dcHero.firstName = "Bat"
dcHero.lastName = "Girl"
print(dcHero) // SuperHero(firstName: "Bat", lastName: "Girl")


var anotherDcHero:FullyNamed = SuperHero()
print(anotherDcHero)
anotherDcHero.firstName = "Bat" 
//ERROR: cannot assign to property: 'firstName' is a get-only property
anotherDcHero.lastName = "Girl"
print(anotherDcHero)
