extension Dictionary where Key: Comparable {

    var descriptionOrderedByKey: String {
        return makeDescriptionOrderedByKey()
    }
    
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