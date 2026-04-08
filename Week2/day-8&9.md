# Day 8&9 - March 24, 2026 - March 26, 2026


##  Digital Objects (DOBs)

### What I learnt
- Digital objects (DOB) are CKB's version of an NFT
- They are more powerful and built on a protocol called Spore
- Digital objects(DOB) are created on the Nervos network using Spore Protocol  
- One of the key differences between the Ethereum NFT and CKB is that, if the server goes down, the metadata of the Ethereum NFT can disappear, unlike the CKB DOB, whose contents live on-chain forever and can never be deleted unless the owner explicitly destroys it
- DOB's supports texts, images, application/json, text/html
- DOB is stored inside a cell

### Today's Task
- Create Digital Object

### What I did 
- Went through the CKB Digital Objects (DOB) documentation 
- Set up the create-dob exercise in my project
- Debugged the exercise to run efficiently on my local device
- Ran the server and the exercise
- Inserted an image on the browser with a size of 25051 bytes
- Created DOB
- Finally, checked the spore content of the DOB created

### Proof of Work
![Screenshot 9](../screenshots/Screenshot%202026-04-07%20175934.png)

![Screenshot 10](../screenshots/Screenshot%202026-04-07%20175954.png)

 ### Tx Hash
 tx Hash: 0xab8a11144d4331b22759971e9a6cfb738eb451102126bfff40873a2354dbefbf

 ### Challenges
- I ran into a browser-side fetch issue that kept saying (illegal invocation) when spore/lumos tried to create and send transactions. After checking around, I found the root cause was a nested cross-fetch dependency exporting an unbound browser fetch, and I resolved it by identifying the actual nested dependency path used at runtime and patching it so fetch is properly bound.
