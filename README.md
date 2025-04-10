# NFT Projects Collection

A collection of NFT projects built with Foundry and Solidity, featuring both a basic ERC721 implementation and an interactive Mood NFT.

## Overview

This repository contains two NFT implementations:

1. **Mood NFT**: A dynamic, on-chain NFT that can change its appearance based on the owner's mood. The NFT is 100% on-chain, meaning all metadata and images are stored directly on the blockchain.

2. **Basic NFT**: A simple ERC721 implementation that serves as a foundation for understanding NFT basics.

### Mood NFT Key Features
- Dynamic NFT that can switch between happy and sad states
- 100% on-chain metadata and SVG images
- Interactive mood-flipping functionality
- ERC721 compliant implementation
- Comprehensive test coverage
- Automated deployment scripts

### Basic NFT Features
- Simple ERC721 compliant implementation
- Basic minting functionality
- Standard metadata handling
- Foundation for NFT development

## Features

### Core Features (Mood NFT)
- **Mood Switching**: NFT owners can flip their NFT's mood between happy and sad states
- **On-chain Storage**: All metadata and images are stored directly on the blockchain
- **SVG-based Artwork**: Dynamic SVG images that change based on the NFT's mood
- **Access Control**: Only the owner or approved address can change the NFT's mood

### Technical Features
- ERC721 compliant implementation
- Base64 encoded metadata
- SVG image generation
- Comprehensive test suite
- Automated deployment scripts
- Local development environment

## Tech Stack

- **Solidity**: ^0.8.18
- **Foundry**: For development and testing
- **OpenZeppelin Contracts**: v5.0.2
- **Forge Std**: v1.8.2

## Project Structure

```
foundry-nft/
├── src/                    # Source files
│   ├── MoodNft.sol        # Interactive Mood NFT contract
│   └── BasicNft.sol       # Basic NFT implementation
├── test/                   # Test files
│   ├── unit/              # Unit tests
│   │   ├── MoodNftTest.t.sol
│   │   └── DeployMoodNftTest.t.sol
│   └── integrations/      # Integration tests
│       └── BasicNftTest.t.sol
├── script/                 # Deployment scripts
└── img/                    # SVG images
```

## Getting Started

### Prerequisites

- [Foundry](https://book.getfoundry.sh/getting-started/installation)
- [Git](https://git-scm.com/downloads)
- [Node.js](https://nodejs.org/) (optional)

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd foundry-nft
```

2. Install dependencies:
```bash
make install
```

3. Update dependencies:
```bash
make update
```

## Usage

### Testing

Run all tests:
```bash
make test
```

Run Mood NFT specific tests:
```bash
forge test --match-path test/unit/MoodNftTest.t.sol
forge test --match-path test/integrations/MoodNftIntegrationTest.t.sol
```

Run Basic NFT tests:
```bash
forge test --match-path test/integrations/BasicNftTest.t.sol
```

### Deployment

Deploy the Mood NFT contract:
```bash
make deploy
```

### Development

Start a local development environment:
```bash
make anvil
```

## Smart Contract Details

### MoodNft Contract

The main interactive contract implements:
- NFT minting functionality
- Mood switching between happy and sad states
- On-chain metadata storage
- SVG image generation
- Access control for mood changes

### BasicNft Contract

The basic implementation includes:
- Standard ERC721 functionality
- Simple minting mechanism
- Basic metadata handling

### Key Functions

#### MoodNft
- `mintNft()`: Mint a new NFT
- `flipMood(uint256 tokenId)`: Change the NFT's mood
- `tokenURI(uint256 tokenId)`: Get the NFT's metadata URI

#### BasicNft
- `mintNft()`: Mint a new NFT
- `tokenURI(uint256 tokenId)`: Get the NFT's metadata URI
