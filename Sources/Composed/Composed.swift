@dynamicMemberLookup
public struct Compose2<A,B> {
    private var a: A?
    private var b: B?
    
    public init(_ a: A, _ b: B) {
        self.a = a
        self.b = b
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<A, X>) -> X {
        a![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<A, X>) -> X {
        get { a![keyPath: keyPath] }
        set { a![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<B, X>) -> X {
        b![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<B, X>) -> X {
        get { b![keyPath: keyPath] }
        set { b![keyPath: keyPath] = newValue }
    }
}

@dynamicMemberLookup
public struct Compose3<A,B,C> {
    private var a: A?
    private var b: B?
    private var c: C?
    
    public init(_ a: A, _ b: B, _ c: C) {
        self.a = a
        self.b = b
        self.c = c
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<A, X>) -> X {
        a![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<A, X>) -> X {
        get { a![keyPath: keyPath] }
        set { a![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<B, X>) -> X {
        b![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<B, X>) -> X {
        get { b![keyPath: keyPath] }
        set { b![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<C, X>) -> X {
        c![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<C, X>) -> X {
        get { c![keyPath: keyPath] }
        set { c![keyPath: keyPath] = newValue }
    }
}

@dynamicMemberLookup
public struct Compose4<A,B,C,D> {
    private var a: A?
    private var b: B?
    private var c: C?
    private var d: D?
    
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
        a![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<A, X>) -> X {
        get { a![keyPath: keyPath] }
        set { a![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<B, X>) -> X {
        b![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<B, X>) -> X {
        get { b![keyPath: keyPath] }
        set { b![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<C, X>) -> X {
        c![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<C, X>) -> X {
        get { c![keyPath: keyPath] }
        set { c![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<D, X>) -> X {
        d![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<D, X>) -> X {
        get { d![keyPath: keyPath] }
        set { d![keyPath: keyPath] = newValue }
    }
}

@dynamicMemberLookup
public struct Compose5<A,B,C,D,E> {
    private var a: A?
    private var b: B?
    private var c: C?
    private var d: D?
    private var e: E?
    
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
        a![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<A, X>) -> X {
        get { a![keyPath: keyPath] }
        set { a![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<B, X>) -> X {
        b![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<B, X>) -> X {
        get { b![keyPath: keyPath] }
        set { b![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<C, X>) -> X {
        c![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<C, X>) -> X {
        get { c![keyPath: keyPath] }
        set { c![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<D, X>) -> X {
        d![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<D, X>) -> X {
        get { d![keyPath: keyPath] }
        set { d![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<E, X>) -> X {
        e![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<E, X>) -> X {
        get { e![keyPath: keyPath] }
        set { e![keyPath: keyPath] = newValue }
    }
}

@dynamicMemberLookup
public struct Compose6<A,B,C,D,E,F> {
    private var a: A?
    private var b: B?
    private var c: C?
    private var d: D?
    private var e: E?
    private var f: F?
    
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
        a![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<A, X>) -> X {
        get { a![keyPath: keyPath] }
        set { a![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<B, X>) -> X {
        b![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<B, X>) -> X {
        get { b![keyPath: keyPath] }
        set { b![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<C, X>) -> X {
        c![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<C, X>) -> X {
        get { c![keyPath: keyPath] }
        set { c![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<D, X>) -> X {
        d![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<D, X>) -> X {
        get { d![keyPath: keyPath] }
        set { d![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<E, X>) -> X {
        e![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<E, X>) -> X {
        get { e![keyPath: keyPath] }
        set { e![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<F, X>) -> X {
        f![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<F, X>) -> X {
        get { f![keyPath: keyPath] }
        set { f![keyPath: keyPath] = newValue }
    }
}


@dynamicMemberLookup
public struct Compose7<A,B,C,D,E,F,G> {
    private var a: A?
    private var b: B?
    private var c: C?
    private var d: D?
    private var e: E?
    private var f: F?
    private var g: G?
    
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
        a![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<A, X>) -> X {
        get { a![keyPath: keyPath] }
        set { a![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<B, X>) -> X {
        b![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<B, X>) -> X {
        get { b![keyPath: keyPath] }
        set { b![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<C, X>) -> X {
        c![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<C, X>) -> X {
        get { c![keyPath: keyPath] }
        set { c![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<D, X>) -> X {
        d![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<D, X>) -> X {
        get { d![keyPath: keyPath] }
        set { d![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<E, X>) -> X {
        e![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<E, X>) -> X {
        get { e![keyPath: keyPath] }
        set { e![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<F, X>) -> X {
        f![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<F, X>) -> X {
        get { f![keyPath: keyPath] }
        set { f![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<G, X>) -> X {
        g![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<G, X>) -> X {
        get { g![keyPath: keyPath] }
        set { g![keyPath: keyPath] = newValue }
    }
}

@dynamicMemberLookup
public struct Compose8<A,B,C,D,E,F,G,H> {
    private var a: A?
    private var b: B?
    private var c: C?
    private var d: D?
    private var e: E?
    private var f: F?
    private var g: G?
    private var h: H?
    
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
        a![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<A, X>) -> X {
        get { a![keyPath: keyPath] }
        set { a![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<B, X>) -> X {
        b![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<B, X>) -> X {
        get { b![keyPath: keyPath] }
        set { b![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<C, X>) -> X {
        c![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<C, X>) -> X {
        get { c![keyPath: keyPath] }
        set { c![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<D, X>) -> X {
        d![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<D, X>) -> X {
        get { d![keyPath: keyPath] }
        set { d![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<E, X>) -> X {
        e![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<E, X>) -> X {
        get { e![keyPath: keyPath] }
        set { e![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<F, X>) -> X {
        f![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<F, X>) -> X {
        get { f![keyPath: keyPath] }
        set { f![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<G, X>) -> X {
        g![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<G, X>) -> X {
        get { g![keyPath: keyPath] }
        set { g![keyPath: keyPath] = newValue }
    }
    
    public subscript<X>(dynamicMember keyPath: KeyPath<H, X>) -> X {
        h![keyPath: keyPath]
    }
    
    public subscript<X>(dynamicMember keyPath: WritableKeyPath<H, X>) -> X {
        get { h![keyPath: keyPath] }
        set { h![keyPath: keyPath] = newValue }
    }
}

//MARK: Decodable
extension Compose2: Decodable where A: Decodable, B: Decodable {}
extension Compose3: Decodable where A: Decodable, B: Decodable, C: Decodable {}
extension Compose4: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable {}
extension Compose5: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable {}
extension Compose6: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable {}
extension Compose7: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable {}
extension Compose8: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable {}
