# Day-25 - 30th of April 2026

## CKB Fiber Network

### What I studied
- CKB Fiber Network documentation
- Payment channel mechanics
- How Fiber differs from Bitcoin Lightning Network
- How Fiber applies to my Contest Platform project

### What I learnt
- What fiber network actually is 
    - Fiber Network is CKB's layer 2 payment channel that solves the problem of slow and expensive on-chain transactions by allowing the two parties to transact off-chain over a million times before settling everything on-chain with just two transactions. 
- Learnt how Fiber differs from bitcoin's lightning Network
    - Fiber provides support for CKB AND xUDT tokens natively. This allows me to use Fiber to send contest reward tokens, not only CKB. Lightning supports only Bitcoin.
- Learnt how the payment channels work
    - stage 1 - Openning: The two parties put CKB into the same cell. It is a single on-chain transaction
    - stage 2 - transacting: both parties then Swap signed commitment transactions, Instant, zero fees, completely off-chain. Each update creates a new signed state
    - stage 3 -  Submit a final signed state on-chain One on-chain transaction for settling everything. 
    - Note: 1,000,000 transactions between opening and closing still only cost two on-chain transaction fees.
- HTLCs (Hash Time Locked Contracts) ensure the payment is atomic — either everyone gets paid or nobody does. This acts as a trust mechanism.
- Also looked into how the Fiber network will be benefical to my contest reward project
    - It will solve the problems of multiple votes (multiple on-chain transactions) making the transactions just 2 on-chain transactions in total 
    - This will make voting instant (milliseconds not seconds)
    - Nearly free (fraction of a cent)
    - Still verifiable


