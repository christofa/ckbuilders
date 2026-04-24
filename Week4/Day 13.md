Day 13 - 16th, April 2026

## UDT (User Defined Tokens) + Simple UDT (sUDT)

### What I studied
- Class 3 (UDT)
- sUDT Standards Document (RFC 0025)

### What I Learnt 
- Brief Recap of UDT and its importance
- The differences between sUDT and xUDT:
    - sUDT = only has conservation rules
    - xUDT = adds more functionality to sUDT, including custom validations such as blacklisting, transfer limitations, and governance
xUDT is a superstructure that relies on sUDT
- How sUDT works
- The minimal validation model:
    - The whole sUDT security mechanism depends on just one simple principle "The total number of tokens flowing IN should be equal to the total number of tokens flowing OUT." It is known as token conservation.
- I learnt about minting tokens and its principle:
    - Where there are zero input cells containing a certain type of token, it suggests that the creation of new tokens is taking place.
- During the minting process, ths convservation rule doesn't apply, that is how the token issuer create the initial supply. After making that supply, the conservation law holds true
and cannot be bypassed to make additional tokens.
- Learnt how sUDTtokens are identified with their unique ID stored in the type args field. The ID is the hash of the issuer's lock script

### What I did 
- I navigated the CCC docs 
- Found the xUDT playground tool 
- Setup the CKB live playground 
- Connected your wallet 
- Issued a real token on testnet 

### Proof of Work
![Screenshot 16](../screenshots/Screenshot%202026-04-24%20023115.png)

![Screenshot 17](../screenshots/Screenshot%202026-04-24%20023143.png)

### Tx hash 
hash: 0x34b2fdb2f651ca3098940fe2ed61b42edb55714d58cbafcca6245807ef861ed2