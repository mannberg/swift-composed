@dynamicMemberLookup
public struct Compose2<A,B> {
    private let a: A
    private let b: B
    
    public init(_ a: A, _ b: B) {
        self.a = a
        self.b = b
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<A, X>) -> X {
        return a[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<B, X>) -> X {
        return b[keyPath: keyPath]
    }
}

@dynamicMemberLookup
public struct Compose3<A,B,C> {
    private let a: A
    private let b: B
    private let c: C
    
    public init(_ a: A, _ b: B, _ c: C) {
        self.a = a
        self.b = b
        self.c = c
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<A, X>) -> X {
        return a[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<B, X>) -> X {
        return b[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<C, X>) -> X {
        return c[keyPath: keyPath]
    }
}

@dynamicMemberLookup
public struct Compose4<A,B,C,D> {
    private let a: A
    private let b: B
    private let c: C
    private let d: D
    
    public init(
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
    
    public subscript<X>(dynamicMember keyPath: KeyPath<A, X>) -> X {
        return a[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<B, X>) -> X {
        return b[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<C, X>) -> X {
        return c[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<D, X>) -> X {
        return d[keyPath: keyPath]
    }
}

@dynamicMemberLookup
public struct Compose5<A,B,C,D,E> {
    private let a: A
    private let b: B
    private let c: C
    private let d: D
    private let e: E
    
    public init(
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
    
    public subscript<X>(dynamicMember keyPath: KeyPath<A, X>) -> X {
        return a[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<B, X>) -> X {
        return b[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<C, X>) -> X {
        return c[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<D, X>) -> X {
        return d[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<E, X>) -> X {
        return e[keyPath: keyPath]
    }
}

@dynamicMemberLookup
public struct Compose6<A,B,C,D,E,F> {
    private let a: A
    private let b: B
    private let c: C
    private let d: D
    private let e: E
    private let f: F
    
    public init(
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
    
    public subscript<X>(dynamicMember keyPath: KeyPath<A, X>) -> X {
        return a[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<B, X>) -> X {
        return b[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<C, X>) -> X {
        return c[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<D, X>) -> X {
        return d[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<E, X>) -> X {
        return e[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<F, X>) -> X {
        return f[keyPath: keyPath]
    }
}


@dynamicMemberLookup
public struct Compose7<A,B,C,D,E,F,G> {
    private let a: A
    private let b: B
    private let c: C
    private let d: D
    private let e: E
    private let f: F
    private let g: G
    
    public init(
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
    
    public subscript<X>(dynamicMember keyPath: KeyPath<A, X>) -> X {
        return a[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<B, X>) -> X {
        return b[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<C, X>) -> X {
        return c[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<D, X>) -> X {
        return d[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<E, X>) -> X {
        return e[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<F, X>) -> X {
        return f[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<G, X>) -> X {
        return g[keyPath: keyPath]
    }
}

@dynamicMemberLookup
public struct Compose8<A,B,C,D,E,F,G,H> {
    private let a: A
    private let b: B
    private let c: C
    private let d: D
    private let e: E
    private let f: F
    private let g: G
    private let h: H
    
    public init(
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
    
    public subscript<X>(dynamicMember keyPath: KeyPath<A, X>) -> X {
        return a[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<B, X>) -> X {
        return b[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<C, X>) -> X {
        return c[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<D, X>) -> X {
        return d[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<E, X>) -> X {
        return e[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<F, X>) -> X {
        return f[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<G, X>) -> X {
        return g[keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<H, X>) -> X {
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
