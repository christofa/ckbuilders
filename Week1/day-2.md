# Day 1 - March 12, 2026

## Topic: Introduction to Nervos CKB

### What I learned:
- Nervos CKB is a Layer 1 blockchain
- The goal is to be a secured base layer for decentralized applications
- CKB stores knowledge/data on chain permanently
- offCKB works in my development environment jsut like create-react-app or vite
- Scripts in CKB are smart contracts (programs that run on the blockchain)
- The parts of a script (code_hash, hash_type, args) and their usages
- The two types of scripts ( Lockscript and Typescript) and their comparisons
- Cell and the structure of cells
- Live cells and Dead cells and their functions
- learnt about the CKB-VM and how they work
- Finally, look into cycles and how they function with the CKB-VM

### Todays task
- Transfer CKB (the native coin if the network)

### What I did
- Studied sripts, cells, CKB-VM and cycles from the CKB handbook
- Set up my existing hello-world project
- Set up the simple-transfer exercises, files and configurations in the existing project
- viewed test accounts available (20 test accounts were seen and each one already had 4.2 billion test CKB on the devnet)
- installed all dependencies that was needed
- Attached the transfer script in my package.json file
- Finally ran a CKB transfer from account 0 to account 1 using the browser UI

### Code/files used
- exercises/simple-transfer/ccc-client.ts → network connector
- exercises/simple-transfer/lib.ts → CKB transfer logic
- exercises/simple-transfer/index.tsx → UI
- exercises/simple-transfer/index.html → page shell

### Proof of Work


### Observation/Challengs 
The transfer script command syntax seen in the documentation ($env:NETWORK="devnet") performs on Mac & Linux and dosen't run the same way on windows, so I had to use the powershell syntax instead: $env:NETWORK="devnet"; npm run transfer
