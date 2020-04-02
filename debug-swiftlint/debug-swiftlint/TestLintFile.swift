import Foundation

// ❌ Does not work: Triggering example of opt-in rule `explicit_self`
// https://realm.github.io/SwiftLint/explicit_self.html
class A {
    func f1() {}
    func f2() {
        f1()
    }
}

// ✅ Works: Triggering example of opt-in rule `toggle_bool`
// https://realm.github.io/SwiftLint/toggle_bool.html
class B {
    var option: Bool = false
    
    func changeOption() {
        option = !option
    }
}
