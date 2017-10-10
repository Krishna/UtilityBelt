///
/// 
///

extension Dictionary where Key: Comparable {

    /// String representation of this instance,
    /// with the keys in order.
    ///
    /// Useful for inspection and debugging purposes.

    var descriptionOrderedByKey: String {
        return makeDescriptionOrderedByKey()
    }

    /**
     
     Create a String representation of this instance,
     with the keys in order.

     - Returns: String representation.

     */

    func makeDescriptionOrderedByKey() -> String {

        if count == 0 { return "[:]"}

        var result = "["
        var first = true

        let orderedKeys = self.keys.sorted(by: { $0 < $1 })
        type(of: orderedKeys)

        for k in orderedKeys {
            let v = self[k]!

            if first { first = false } else { result += ", "}

            debugPrint(k, terminator: "", to: &result)
            result += ": "
            debugPrint(v, terminator: "", to: &result)
        }

        result += "]"

        return result
    }

}
