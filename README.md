Very rough benchmark comparison for kisu lang.
Ran on AMD Ryzen 7 5800X.

There is no solid way to benchmark nix so benchmarks are done using hyperfine.
Kisu benches avoid criterion due to this and is ran the same way for fairness.   

| Generic    | Time     | Runs |
| ---------- | -------- | ---- |
| `kisu`     | 1.0 ms   | 2651 |
| `nickel`   | 10.4 ms  | 240  |
| `nix`      | 22.9 ms  | 146  |


| Fib 30     | Time     | Runs |
| ---------- | -------- | ---- |
| `kisu`     | 1.599 s  | 10   |
| `nickel`   | 2.191 s  | 10   |
