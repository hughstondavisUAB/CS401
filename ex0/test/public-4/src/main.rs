use project::warmup_functions;

fn main() {
    let numbers = vec![10.0, 20.0, 30.0, 40.0, 50.0];
    let average = warmup_functions::calc_avg(&numbers);
    println!("Average: {:?}", average);

    std::fs::write("output", format!("{:?}", average))
        .expect("Unable to create result file");
}
