@dynamicMemberLookup
struct Compose2<A,B> {
    let a: A
    let b: B
    
    init(_ a: A, _ b: B) {
        self.a = a
        self.b = b
    }
    
    subscript<X>(dynamicMember keyPath: KeyPath<A, X>) -> X {
        return a[keyPath: keyPath]
    }
    
    subscript<X>(dynamicMember keyPath: KeyPath<B, X>) -> X {
        return b[keyPath: keyPath]
    }
}

@dynamicMemberLookup
struct Compose3<A,B,C> {
    let a: A
    let b: B
    let c: C
    
    init(_ a: A, _ b: B, _ c: C) {
        self.a = a
        self.b = b
        self.c = c
    }
    
    subscript<X>(dynamicMember keyPath: KeyPath<A, X>) -> X {
        return a[keyPath: keyPath]
    }
    
    subscript<X>(dynamicMember keyPath: KeyPath<B, X>) -> X {
        return b[keyPath: keyPath]
    }
    
    subscript<X>(dynamicMember keyPath: KeyPath<C, X>) -> X {
        return c[keyPath: keyPath]
    }
}
