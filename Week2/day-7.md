# Day 7 - March 23, 2026

## Sending a CKB Transaction Manually 

### What I learnt
- Revised about the concept of CKB cells
- Learnt about the live cells and how they work
- Understood CellDeps: They point the CKB-VM to where the script code to run can be found
- A fresh transaction consists of version, cellDeps, headerDeps, inputs, outputs, outputsData, and witnesses
- The version is always 0x0 on CKB 
- The headerDeps is usually empty
- The inputs are where live cells are being consumed
- The outputs are where new cells are being created
- The outputsData are data stored in each output cell
- Witnesses are signatures proving you own the input cells

### What I did 
- Finished the CKB basic practical operation course
- Manually created a fresh CKB transaction from scratch 
- Signed the transaction using my MetaMask-connected wallet 
- Successfully made a transaction to the CKB testnet

### My Transaction Details:

```
{
  "version": "0x0",
  "headerDeps": [],
  "cellDeps": [
    {
      "outPoint": {
        "txHash": "0xf8de3bb47d055cdf460d93a2a6e1b05f7432f9777c8c474abf4eec1d4aee5d37",
        "index": "0x0"
      },
      "depType": "depGroup"
    },
    {
      "outPoint": {
        "txHash": "0xec18bf0d857c981c3d1f4e17999b9b90c484b303378e94de1a57b0872f5d4602",
        "index": "0x0"
      },
      "depType": "code"
    }
  ],
  "inputs": [
    {
      "since": "0x0",
      "previousOutput": {
        "txHash": "0x6945466f8497f9358420a0efac2aac853f9faa4a93a3d39b3260df830cc6548a",
        "index": "0x0"
      }
    }
  ],
  "outputs": [
    {
      "capacity": "0x2540be018",
      "lock": {
        "codeHash": "0xf329effd1c475a2978453c8600e1eaf0bc2087ee093c3ee64cc96ec6847752cb",
        "hashType": "type",
        "args": "0x01d92e3bcdb768bd4c4666244281476f6e1ec0c7ba00"
      }
    }
  ],
  "outputsData": [
    "0x"
  ],
  "witnesses": [
    "0x69000000100000006900000069000000550000005500000010000000550000005500000041000000f84498f7ee9a64e9d6f65edab4ac2807ea5e32cda9579224b2335a9972a8071909d3763b7d64ec8fae04b9dfe830869101822825a25a97affa0f94bb8dbf4ef801"
  ]
}
```

### Tx hash
tx_hash: 0x6e410268491acedb9b9a7f0e063e4974b9900ef4ff6dd0a924392ea719d6a529

### Proof of Work
![Screenshot 8](../screenshots/Screenshot%202026-04-03%20043017.png)
