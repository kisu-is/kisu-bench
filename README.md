Very rough benchmarch comparison for kisu lang.
Ran on AMD Ryzen 7 5800X.

There is no solid way to benchmark nix so benchmarks are done using hyperfine.
Kisu benches avoid criterion due to this and are ran the same way for fairness.

| Benchmark  | Time     | Runs |
| ---------- | -------- | ---- |
| `kisu`     | 714.6 µs | 1220 |
| `nix`      | 19.8 ms  | 130  |

