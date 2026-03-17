# Day 1 - March 13, 2026

## Storing Data on CKB

### What i learned:- What storing data on the chain mean
- How CKB data is stored
- Why CKB is unique for storing Data
- Why developers prefer storing data on CKB 
- Learnt about Immutable Data
- CKB stores data as hex bytes not just as plain text
- An empty cell cost 61 CKB for just its structure



### What I did
- Read through the store-data-on-cell doc 
- Set up the store-data-on-cell exercise in my project
- Inserted a message "Learning CKB is awesome" on my CKB devnet 
- Put read button to read the message back from the chain



### Hash
tx Hash: 0xbe51216f39663818cded322a27409292bfde30f36810a4ac49bdf7efe6bb31de

### Proof of Work

- Project running:


- When the Write button is clicked:


- When the Read button is clicked:

### Challenges
- I encounted 2 TypeScript bugs (null errord) in the index.tsx file, so i fixed it by adding ! after container and txHash to tell TypeScript these values are guaranteed to exist at that point.

- Bug 1:
```Before
const container = document.getElementById("root");
const root = createRoot(container)
```

```After
const container = document.getElementById("root")!;
const root = createRoot(container)
```

Bug 2:
```Before 
onClick={() => {
  readOnChainMessage(txHash);
}}
```

```After
onClick={() => {
  readOnChainMessage(txHash!);
}}
```