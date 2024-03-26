
use project::warmup_functions;


fn main() {
    let result = warmup_functions::more_x_than_y("xxyxxyxx");
    println!("{}", result);

    std::fs::write("output", result.to_string()).expect("Unable to create result file");


    // assert_eq!(true, result);
}
