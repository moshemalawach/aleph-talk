---
author: Moshe Malawach
title: Aleph
date: March 23rd, 2019
---

Aleph is an universal layer-2 platform

# Why ?


##

- Delays
- Costs
- Onboarding
- Storage

## How ?

- Off-chain state
- Free actions
- IPFS incentive
- Cross-chain

# Network

## 

```mermaid
graph LR

  User(User) --- Frontend(Frontend)
  Frontend --- APIS(API Servers)
  Frontend --- P2PN(DHT-Based<br>P2P Network)
  APIS --- ALP(Aleph Network)
  P2PN --- ALP
  ALP --- SVM(Smart VMs)
  ALP --- STR(Distributed & Incentivized Storage)
  STR --- IPFS
  ALP --- BlockChain
  
  class User,Frontend,APIS,P2PN,ALP,SVM,STR,IPFS,BlockChain icon-node;
  class User girl;
  class Frontend web;
  class APIS api;
  class P2PN sat;
  class SVM brain;
  class STR hosting;
  class ALP planets;
  class IPFS ipfs;
  class BlockChain blockchain;
```

##

- Replicated data
- All the data isn't everywhere
- Per dApp "subnetwork"

## Current state

- Proof of Concept testnet
- Storage
- Posts
- Aggregates
- No VMs (yet)
- Only NULS (so far)

## Use cases

- Data Store
- Social networks
  - Medium
  - Instagram
  - Chat
- IoT storage

## Future use cases

- Games
- Currencies/Tokens
- Business Applications
- ...

##

```graphviz
digraph structs {
    rankdir=LR
    graph [bgcolor=transparent];	/* set background */
	edge [color=white];
	node[style=filled,label="",shape=record];

    message [shape=Mrecord,label=" Message| IPFS Hash| Signature"];
    aggregate [shape=Mrecord,label=" Aggregate| {Key|Value}"];
    post [shape=Mrecord,label=" Post |Type|Ref|Content"];
    message:f0 -> aggregate:f0;
    message:f0 -> post:here;
}
```

## VMs / Smart Contracts

- State object link
  - ref. previos hash
  - link as a DAG

##


```graphviz
digraph G {

	subgraph cluster_0 {
		node [style=filled];
		a0 -> a1 -> a2 -> a3 -> a4;
		label = "VM #1";
	}

	subgraph cluster_1 {
		node [style=filled];
		b0 -> b1 -> b2 -> b3;
		label = "VM #2";
	}
	a1 -> b3;
	b3 -> a3;
}
```
 
# Example application

## Repositories

[https://github.com/aleph-im/aleph-blogs](https://github.com/aleph-im/aleph-blogs)
[https://github.com/aleph-im/simple-dapp](https://github.com/aleph-im/simple-dapp)

# Thanks

##

Project [Aleph.im](https://aleph.im)

Moshe Malawach

