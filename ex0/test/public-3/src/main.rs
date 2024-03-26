use project::warmup_functions;

fn main() {
    let mut arr = [0, 1, 0, 3, 0, 10, 16];
    warmup_functions::shift_zeroes(&mut arr);
    println!("{:?}", arr);

    let arr_string = format!(
        "[{}]",
        arr.iter()
            .map(|&num| num.to_string())
            .collect::<Vec<String>>()
            .join(", ")
    );

    std::fs::write("output", arr_string).expect("Unable to create result file");

    // assert_eq!(true, result);
}
