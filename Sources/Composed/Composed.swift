@dynamicMemberLookup
struct Compose2<A,B> {
    private let a: A
    private let b: B
    
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
    private let a: A
    private let b: B
    private let c: C
    
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

@dynamicMemberLookup
struct Compose4<A,B,C,D> {
    private let a: A
    private let b: B
    private let c: C
    private let d: D
    
    init(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D
    ) {
        self.a = a
        self.b = b
        self.c = c
        self.d = d
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
    
    subscript<X>(dynamicMember keyPath: KeyPath<D, X>) -> X {
        return d[keyPath: keyPath]
    }
}

@dynamicMemberLookup
struct Compose5<A,B,C,D,E> {
    private let a: A
    private let b: B
    private let c: C
    private let d: D
    private let e: E
    
    init(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E
    ) {
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.e = e
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
    
    subscript<X>(dynamicMember keyPath: KeyPath<D, X>) -> X {
        return d[keyPath: keyPath]
    }
    
    subscript<X>(dynamicMember keyPath: KeyPath<E, X>) -> X {
        return e[keyPath: keyPath]
    }
}

@dynamicMemberLookup
struct Compose6<A,B,C,D,E,F> {
    private let a: A
    private let b: B
    private let c: C
    private let d: D
    private let e: E
    private let f: F
    
    init(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        _ f: F
    ) {
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.e = e
        self.f = f
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
    
    subscript<X>(dynamicMember keyPath: KeyPath<D, X>) -> X {
        return d[keyPath: keyPath]
    }
    
    subscript<X>(dynamicMember keyPath: KeyPath<E, X>) -> X {
        return e[keyPath: keyPath]
    }
    
    subscript<X>(dynamicMember keyPath: KeyPath<F, X>) -> X {
        return f[keyPath: keyPath]
    }
}


@dynamicMemberLookup
struct Compose7<A,B,C,D,E,F,G> {
    private let a: A
    private let b: B
    private let c: C
    private let d: D
    private let e: E
    private let f: F
    private let g: G
    
    init(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        _ f: F,
        _ g: G
    ) {
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.e = e
        self.f = f
        self.g = g
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
    
    subscript<X>(dynamicMember keyPath: KeyPath<D, X>) -> X {
        return d[keyPath: keyPath]
    }
    
    subscript<X>(dynamicMember keyPath: KeyPath<E, X>) -> X {
        return e[keyPath: keyPath]
    }
    
    subscript<X>(dynamicMember keyPath: KeyPath<F, X>) -> X {
        return f[keyPath: keyPath]
    }
    
    subscript<X>(dynamicMember keyPath: KeyPath<G, X>) -> X {
        return g[keyPath: keyPath]
    }
}

@dynamicMemberLookup
struct Compose8<A,B,C,D,E,F,G,H> {
    private let a: A
    private let b: B
    private let c: C
    private let d: D
    private let e: E
    private let f: F
    private let g: G
    private let h: H
    
    init(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        _ f: F,
        _ g: G,
        _ h: H
    ) {
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.e = e
        self.f = f
        self.g = g
        self.h = h
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
    
    subscript<X>(dynamicMember keyPath: KeyPath<D, X>) -> X {
        return d[keyPath: keyPath]
    }
    
    subscript<X>(dynamicMember keyPath: KeyPath<E, X>) -> X {
        return e[keyPath: keyPath]
    }
    
    subscript<X>(dynamicMember keyPath: KeyPath<F, X>) -> X {
        return f[keyPath: keyPath]
    }
    
    subscript<X>(dynamicMember keyPath: KeyPath<G, X>) -> X {
        return g[keyPath: keyPath]
    }
    
    subscript<X>(dynamicMember keyPath: KeyPath<H, X>) -> X {
        return h[keyPath: keyPath]
    }
}

extension Compose2: Codable where A: Codable, B: Codable {}
extension Compose3: Codable where A: Codable, B: Codable, C: Codable {}
extension Compose4: Codable where A: Codable, B: Codable, C: Codable, D: Codable {}
extension Compose5: Codable where A: Codable, B: Codable, C: Codable, D: Codable, E: Codable {}
extension Compose6: Codable where A: Codable, B: Codable, C: Codable, D: Codable, E: Codable, F: Codable {}
extension Compose7: Codable where A: Codable, B: Codable, C: Codable, D: Codable, E: Codable, F: Codable, G: Codable {}
extension Compose8: Codable where A: Codable, B: Codable, C: Codable, D: Codable, E: Codable, F: Codable, G: Codable, H: Codable {}
