// Integer types implement basic comparison and arithmetic operators.
// Felt operations should be avoided where possible, as they could have unwanted behavior.

// I AM  DONE

// TODO
// Return the solution of x^3 + y - 2

use debug::print_felt; 
use traits::Into;

fn poly(x: usize, y: usize) -> usize {
    // FILL ME
    // since we are testing for usize, attatch `_usize` to the felt value: ie 2
    // spread out `x^3` as `x*x*x` since there is no `^` in cairo
    let res = x*x*x + y-2_usize;
    res // Do not change
}


// Do not change the test function
#[test]
fn test_poly() {
    let res = poly(5_usize, 3_usize);
    print_felt(res.into());
    assert(res == 126_usize, 'Error message');
    assert(res < 300_usize, 'res < 300');
    assert(res <= 300_usize, 'res <= 300');
    assert(res > 20_usize, 'res > 2');
    assert(res >= 2_usize, 'res >= 2');
    assert(res != 27_usize, 'res != 27');
}

