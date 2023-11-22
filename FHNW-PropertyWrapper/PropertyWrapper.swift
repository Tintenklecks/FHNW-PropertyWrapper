import SwiftUI

@propertyWrapper
class Truncating {
    private var value: String
    let maxLength: Int

    var wrappedValue: String {
        get { value }
        set {
            value = String(newValue.prefix(maxLength))
        }
    }

    init(wrappedValue: String, maxLength: Int) {
        self.value = String(wrappedValue.prefix(maxLength))
        self.maxLength = maxLength
    }
}
