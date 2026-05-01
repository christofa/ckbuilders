Day 14 - 17th, April 2026

# WebAssembly on CKB + Class 8: Performant WASM

## What I studied
- Class 4 (WebAssembly on CKB)
- Class 8 (Performant WASM)

### What I learnt
- WebAssembly (WASM) is a means of executing code in other programming languages,
such as Rust and C, in JavaScript-only environments. 
- WebAssembly behaves like a universal
translator; you can program in any language, run anywhere.
- Learnt how WASM fits into CKB
- Found out you can run a WASM interpreter (ckb-js-vm) inside CKB-VM. This lets you write contracts in JavaScript or TypeScript, which get compiled and executed through that interpreter.
- Had to do deeper research and I found out that whenever you develop a contract in TypeScript, such as I have done in past projects:
    - It executes THROUGH the ckb-js-vm virtual machine
    - More cycles required (~4M for the same signature check)
    - 4 times costlier compared to Rust
    - Simplest to code — uses regular syntax and the npm ecosystem
    - Perfect for beginners, prototypes, and less mission-critical contracts
- Looked into why cycle counting matters
- More cycles mean higher computation costs in CKB. More cycles translate to higher transaction costs. While this does not affect a contract that executes itself occasionally, an extra 4 times the cycle translates to 4 times the expense for a contract executing itself many times daily.


### Proof of Work 

![Screenshot 18](../screenshots/Screenshot%202026-04-24%20020816.png)
