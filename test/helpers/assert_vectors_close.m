% Vector comparison helper
function assert_vectors_close(a, b, tol)
    assert(all(abs(a - b) < tol), 'Vectors are not close enough.');
end
