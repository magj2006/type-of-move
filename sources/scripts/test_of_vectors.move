script {
    use std::vector;
    use std::debug;

    fun test_of_vectors() {
    let v = vector::empty<u64>();
    vector::push_back(&mut v, 5);
    vector::push_back(&mut v, 6);

    let v_copy = v;

    debug::print(&v);
    debug::print(&v_copy);

    assert!(*vector::borrow(&v, 0) == 5, 42);
    assert!(*vector::borrow(&v, 1) == 6, 42);
    assert!(vector::pop_back(&mut v) == 6, 42);
    assert!(vector::pop_back(&mut v) == 5, 42);
    }
}