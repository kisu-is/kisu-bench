#!/usr/bin/env bash
echo "benchmarking kisu..."
cd kisu && cargo build --release && cd -
hyperfine 'kisu/target/release/kisu-bench'

echo "benchmarking nix..."
hyperfine 'nix-instantiate --eval nix/bench.nix --quiet'
