// if1.cairo
// Execute `starklings hint if1` or use the `hint` watch subcommand for a hint.

// I AM  DONE

fn bigger(a: usize, b: usize) -> usize {
    // Complete this function to return the bigger number!
    // Do not use:
    // - another function call
    // - additional variables

    // add the flow below and you are good to go
    if a > b {
    return a;
    }
    b
}

// Don't mind this for now :)
mod tests {
    use super::bigger;

    #[test]
    fn ten_is_bigger_than_eight() {
        assert(10_usize == bigger(10_usize, 8_usize), '10 bigger than 8');
    }

    #[test]
    fn fortytwo_is_bigger_than_thirtytwo() {
        assert(42_usize == bigger(32_usize, 42_usize), '42 bigger than 32');
    }
}

// keyNotes
// Like in Rust, functions have two ways of returning values. 
// The first is by using the final expression of the function. 
// In this case, the ; is omitted at the end of the line. 
// The second is by using the return keyword. 
// This can only be used to return a value earlier from within the function and can, 
// for example, be used from inside if statements.