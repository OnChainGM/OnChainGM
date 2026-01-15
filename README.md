# OnChainGM - Your Daily Web3 Ritual 🌐

> A production-ready multi-chain Web3 application enabling seamless interactions across 117+ blockchain networks with embedded widget support and referral system

[![TypeScript](https://img.shields.io/badge/TypeScript-5.2-blue.svg)](https://www.typescriptlang.org/)
[![React](https://img.shields.io/badge/React-18.2-61dafb.svg)](https://reactjs.org/)
[![Vite](https://img.shields.io/badge/Vite-5.4-646cff.svg)](https://vitejs.dev/)
[![Networks](https://img.shields.io/badge/Networks-117+-green.svg)](https://onchaingm.com)
[![Languages](https://img.shields.io/badge/Languages-9-orange.svg)](https://onchaingm.com)

[Live Demo](https://onchaingm.com) | [Documentation](https://onchaingm.com/documentation) | [Embed Widget](https://onchaingm.com/embed)

---

## 📋 Table of Contents

- [Overview](#overview)
- [Key Features](#key-features)
- [Quick Start](#quick-start)
- [Embed Widget & Referral System](#embed-widget--referral-system)
- [Supported Networks](#supported-networks-117)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Multi-Language Support](#multi-language-support)
- [Usage Guide](#usage-guide)
- [Security](#security)
- [Contributing](#contributing)
- [Roadmap](#roadmap)

---

## Overview

**OnChainGM** is a comprehensive Web3 application that makes blockchain interactions simple and accessible. Whether you're sending daily GM transactions, bridging tokens across chains, or deploying smart contracts, OnChainGM provides a seamless, user-friendly experience across 117+ blockchain networks.

### What Makes OnChainGM Special?

- **117+ Networks:** The largest multi-chain support in a single interface
- **Smart Bridge:** Auto-selects the best routes with lowest fees and fastest execution
- **Embeddable Widget:** Add GM buttons to any website with referral earnings
- **Daily GM Ritual:** Build your on-chain presence with daily transactions
- **One-Click Deploy:** Launch smart contracts across any supported network
- **Social Integration:** Native Farcaster support for Web3 social features
- **9 Languages:** Full internationalization support
- **Zero Config:** Works perfectly without any API keys or configuration

### Who Is This For?

- **Web3 Enthusiasts:** Daily GM ritual and cross-chain presence
- **Website Owners:** Earn 10% commission with embedded GM buttons
- **DeFi Users:** Multi-chain bridge with best rates
- **Developers:** Quick contract deployment and testing
- **Crypto Traders:** Efficient token bridging across chains
- **Community Members:** Social features and referral system

---

## Key Features

### 🌉 Advanced Bridge System

The most intelligent bridging experience in Web3:

- **Dual Provider System:** LiFi SDK + Relay Protocol for maximum coverage
- **Auto-Select Best Route:** Automatically chooses optimal route based on:
  - Highest destination token amount
  - Lowest total fees
  - Fastest execution time
- **Smart Route Refresh:** Routes update every 30 seconds with auto-selection
- **Manual Override:** Power users can select preferred routes
- **Gas Optimization:** Smart MAX button reserves gas for native tokens
- **Real-Time Quotes:** Live price impact and slippage calculations
- **Token Search:** Find any token by symbol, name, or contract address
- **Balance Tracking:** Real-time balance updates across all chains

### 🎁 Embed Widget & Referral System

Monetize your website with embedded GM buttons:

- **Easy Integration:** Simple copy-paste HTML code
- **Customizable:** Choose network, colors, and styling
- **Referral Earnings:** Earn 10% commission on all transactions
- **Instant Payouts:** Automatic payments directly to your wallet
- **Multi-Network:** Support for all 117+ networks
- **Mobile Responsive:** Works perfectly on all devices
- **Zero Maintenance:** Set it and forget it

**Quick Embed Example:**
```html
<script src="https://onchaingm.com/embed.js"></script>
<div
  class="gm-button"
  data-network="8453"
  data-referral="YOUR_WALLET_ADDRESS"
></div>
```

### 🌍 Multi-Chain GM System

Build your on-chain presence across 117+ networks:

- **Daily GM Transactions:** Send GM to any supported blockchain
- **GM Streak Tracking:** Monitor your consistency across chains
- **Network Analytics:** View GM statistics per network
- **Social Sharing:** Share your GM on Farcaster
- **Cross-Chain History:** Track all your GM transactions in one place

### 🚀 Smart Contract Deployment

Deploy contracts with a single click:

- **Multiple Templates:** Pre-built contract templates
- **Network-Specific Optimization:** Gas-optimized for each chain
- **Deployment Tracking:** Monitor all your deployments
- **Verification Support:** Automatic contract verification
- **Analytics Dashboard:** View deployment statistics

### 💼 Wallet Integration

Seamless wallet connectivity:

- **Multi-Wallet Support:** MetaMask, Coinbase Wallet, WalletConnect, and more
- **RainbowKit Powered:** Beautiful, accessible wallet connection UI
- **Balance Management:** Track balances across all connected chains
- **Transaction History:** Complete transaction timeline
- **Network Switching:** Automatic network switching when needed

### 🎭 Farcaster Social Integration

Native Web3 social features:

- **Mini-App Support:** Works as a Farcaster mini-app
- **Social Sharing:** Share transactions directly to Farcaster
- **Frame Support:** Render Farcaster frames
- **Community Features:** Connect with other Web3 users

### 📊 Analytics & Tracking

Comprehensive analytics powered by Supabase:

- **Transaction Monitoring:** Track all bridge and GM transactions
- **User Statistics:** Personal activity metrics
- **Network Performance:** See which networks are most active
- **GM Streaks:** Track your daily ritual consistency
- **Referral Analytics:** Monitor referral performance

---

## Quick Start

### Prerequisites

- **Node.js 18+** installed
- **npm** or **yarn** package manager
- **Git** for version control
- **Web3 Wallet** (MetaMask, Coinbase Wallet, etc.)

### Installation

```bash
# Clone the repository
git clone https://github.com/your-org/onchaingm.git

# Navigate to project directory
cd onchaingm

# Install dependencies
npm install

# Start development server
npm run dev

# Application runs at http://localhost:5173
```

### Environment Setup (Optional)

The application works perfectly without any configuration! However, for full features:

```bash
# Copy environment template
cp .env.example .env
```

**Environment Variables:**

| Variable | Description | Required |
|----------|-------------|----------|
| `VITE_SUPABASE_URL` | Supabase project URL | No - For analytics only |
| `VITE_SUPABASE_ANON_KEY` | Supabase anonymous key | No - For analytics only |

**Important Notes:**
- Without Supabase: App works normally, analytics features are disabled
- Bridge functionality: Works without any configuration
- Wallet connection: No API keys required
- All core features work out of the box!

### Production Build

```bash
# Build for production
npm run build

# Preview production build
npm run preview
```

Build output will be in the `dist/` directory.

---

## Embed Widget & Referral System

### For Website Owners - Start Earning in 3 Minutes!

#### Step 1: Get Your Embed Code

1. Go to: [https://onchaingm.com/embed](https://onchaingm.com/embed)
2. Select your network (e.g., Base, Optimism, Arbitrum)
3. Enter your wallet address in the "Referral Address" field
4. Copy the generated embed code

#### Step 2: Add to Your Website

Paste the code anywhere in your HTML:

```html
<script src="https://onchaingm.com/embed.js"></script>
<div
  class="gm-button"
  data-network="8453"
  data-color="blue"
  data-name="Base"
  data-icon="https://onchaingm.com/chains/base.jpg"
  data-referral="YOUR_WALLET_ADDRESS"
></div>
```

#### Step 3: Start Earning!

That's it! You now earn **10% commission** on every GM transaction made through your button.

### Commission Breakdown

```
Standard GM Fee:       0.000029 ETH
User Discount (15%):   0.0000045 ETH
Discounted Fee:        0.00002465 ETH
Your Commission (10%): 0.000002465 ETH per GM
```

### Example Earnings

```
10 users × 1 GM/day:    $0.085/day  →  $2.55/month
100 users × 1 GM/day:   $0.85/day   →  $25/month
1000 users × 1 GM/day:  $8.50/day   →  $255/month
```

*(Calculated at $3,500/ETH. Actual earnings depend on ETH price and network fees)*

### Use Cases

- **Blog Posts** - Add GM buttons to Web3 tutorials
- **Documentation** - Integrate into developer docs
- **Gaming Sites** - Reward community for daily check-ins
- **NFT Projects** - Add to minting pages
- **Portfolio Sites** - Monetize Web3 portfolio
- **Social Profiles** - Link in bio tools
- **YouTube** - Add to video descriptions
- **Newsletters** - Include in Web3 newsletters

### Key Benefits

- ✅ 10% commission on every transaction
- ✅ Instant, automatic payouts
- ✅ No claiming or maintenance
- ✅ Works across 117+ networks
- ✅ Easy integration (copy/paste HTML)
- ✅ Win-win for users and referrers
- ✅ Scales infinitely

### Complete Referral Flow - Technical Deep Dive

#### Step 1: Website Owner Creates Embed Code

The website owner visits [onchaingm.com/embed](https://onchaingm.com/embed) and:

1. Selects a network (e.g., Base)
2. Enters their wallet address
3. Sees referral enabled confirmation with commission details
4. Copies the generated embed code with their referral address included:

```html
<script src="https://onchaingm.com/embed.js"></script>
<div class="gm-button"
  data-network="8453"
  data-color="blue"
  data-name="Base"
  data-icon="..."
  data-referral="0x742d35Cc6634C0532925a3b844Bc9e7595f0bEb">
</div>
```

5. Pastes the code on their website

#### Step 2: End User Visits Website

When a user visits the website with the embedded button:

1. They see the GM button for the selected network
2. Clicking the button triggers the `embed.js` script
3. The script reads the `data-referral` attribute
4. Creates a modal with an iframe pointing to:
   ```
   https://onchaingm.com/embed/network-card
     ?network=8453
     &name=Base
     &ref=0x742d35Cc6634C0532925a3b844Bc9e7595f0bEb
   ```
5. The modal opens with the embedded network card

#### Step 3: Embedded Page Captures Referral

The embedded page (`embedded-network-card.tsx`):

1. Reads the `ref` URL parameter using `searchParams.get('ref')`
2. Validates the referral address:
   - Checks if it's a valid Ethereum address
   - Ensures it's not the zero address
   - Confirms it's not a self-referral
3. Stores the referral in localStorage:
   - `localStorage.setItem('referrer', ref)`
   - `localStorage.setItem('referrer_timestamp', Date.now())`
4. Displays a UI indicator showing the referral is active

#### Step 4: User Connects Wallet and Sends GM

The user completes the transaction:

1. Clicks "Connect Wallet" and connects via MetaMask/WalletConnect
2. Clicks the "GM" button
3. The `use-gm` hook:
   - Reads the referrer from localStorage
   - Validates the timestamp (must be within 24 hours)
   - Validates the referrer address
   - Calls the smart contract: `contract.onChainGMWithReferral(referrer)`
4. User confirms the transaction

#### Step 5: Smart Contract Processes Transaction

The smart contract on the selected network:

1. Receives `onChainGMWithReferral(referrerAddress)`
2. Calculates fees:
   - Standard fee: 0.000029 ETH
   - User discount (15%): -0.0000045 ETH
   - Discounted fee: 0.00002465 ETH
   - Commission (10% of discounted): 0.000002465 ETH
3. User pays: **0.00002465 ETH** (saves 15%)
4. Distributes funds:
   - **0.000002465 ETH** → Referrer (instant payout)
   - **0.000022185 ETH** → Protocol
5. Transaction completes and emits event

#### Step 6: Confirmation and Payouts

Final state after transaction:

- **End User:** GM sent successfully, saved 15% on fees
- **Website Owner:** Earned commission instantly (no claiming needed)
- **Both parties:** Win-win outcome with automatic, trustless payments

### Security Features

The referral system includes multiple security layers:

- **Address Validation:** Using ethers.js to validate all addresses
- **Zero Address Rejection:** Prevents invalid referrals
- **Self-Referral Prevention:** Users cannot refer themselves
- **24-Hour Expiry:** Referral links expire after 24 hours
- **Timestamp Tracking:** Prevents stale referrals
- **Case-Insensitive Comparison:** Handles address variations
- **Smart Contract Validation:** On-chain verification of all parameters

### Win-Win-Win Scenario

**End User Benefits:**
- Saves 15% on every GM transaction
- Supports favorite content creators
- Same great user experience

**Website Owner Benefits:**
- Earns 10% passive commission
- Instant automatic payouts
- No maintenance required
- Easy copy/paste integration

**OnChainGM Benefits:**
- Viral growth mechanism
- Decentralized marketing
- Increased adoption
- Strong network effects

---

## Supported Networks (117)

OnChainGM supports the largest collection of blockchain networks:

### Layer 1
Ethereum, Bitcoin (via Merlin), Solana

### Layer 2
Base, Arbitrum, Arbitrum Nova, Optimism, zkSync Era, Scroll, Linea, Blast, Mode, Zora, Polygon zkEVM, Manta Pacific, Mantle, Metis, Boba Network

### Alt-L1
Avalanche, BNB Chain, Polygon, Fantom, Gnosis Chain, Moonbeam, Moonriver, Celo, Harmony, Cronos, Aurora, Evmos, Kava, Fuse

### Emerging Chains
Soneium, Ink, UniChain, Plume, Superposition, World Chain, Cyber, Polynomial, Sanko, Mint, Redstone, Taiko, Kroma

### Gaming & NFT
Immutable X, Immutable zkEVM, Ronin, Beam, Treasure, Ancient8, Oasys, Astar zkEVM, StratoVM

### DeFi Focused
Fraxtal, BOB, Merlin Chain, RARI Chain

### Bitcoin Layers
Merlin Chain, B² Network, BEVM, Bitlayer

### Other Specialized Networks
Arbitrum Sepolia, Base Sepolia, Optimism Sepolia, Ethereum Sepolia (testnets available)

[View Full Network List →](https://onchaingm.com)

---

## Tech Stack

### Frontend Framework
- **React 18.2** - Modern UI library
- **TypeScript 5.2** - Type-safe development
- **Vite 5.4** - Lightning-fast build tool
- **Tailwind CSS 3.4** - Utility-first styling

### Web3 Integration
- **Wagmi 2.5** - React hooks for Ethereum
- **Viem 2.7** - TypeScript interface for Ethereum
- **@lifi/sdk 3.8** - Bridge aggregation
- **RainbowKit 2.0** - Wallet connection UI
- **Ethers.js 6.11** - Ethereum library
- **zkSync Web3 0.15** - zkSync-specific features

### UI & UX
- **Lucide React** - Beautiful icon system
- **React Hot Toast** - Toast notifications
- **Recharts 3.1** - Analytics visualization
- **React Confetti** - Celebration animations
- **React Router DOM 6.22** - Client-side routing

### Backend & Data
- **Supabase 2.53** - Backend-as-a-Service
- **@tanstack/react-query 5.24** - Data fetching and caching
- **Fuse.js 7.0** - Fuzzy search functionality
- **date-fns 4.1** - Date utilities

### Social Integration
- **@farcaster/miniapp-sdk 0.2** - Farcaster mini-app support
- **@neynar/react 1.2** - Farcaster API integration

---

## Multi-Language Support

OnChainGM supports **9 languages** with full internationalization:

| Language | Code | Status | Coverage |
|----------|------|--------|----------|
| 🇬🇧 English | `en` | ✅ Complete | 100% |
| 🇹🇷 Turkish | `tr` | ✅ Complete | 100% |
| 🇩🇪 German | `de` | ✅ Complete | 100% |
| 🇮🇩 Indonesian | `id` | ✅ Complete | 100% |
| 🇯🇵 Japanese | `ja` | ✅ Complete | 100% |
| 🇷🇺 Russian | `ru` | ✅ Complete | 100% |
| 🇺🇦 Ukrainian | `uk` | ✅ Complete | 100% |
| 🇻🇳 Vietnamese | `vi` | ✅ Complete | 100% |
| 🇨🇳 Chinese | `zh` | ✅ Complete | 100% |

All features including the embed widget and referral system are fully translated.

---

## Usage Guide

### Bridging Tokens

1. **Connect Wallet** - Click "Connect Wallet" and choose your wallet
2. **Select Networks** - Choose source and destination networks
3. **Select Tokens** - Pick tokens on both chains
4. **Enter Amount** - Type amount or click MAX
5. **Review Route** - Best route is auto-selected
6. **Execute Bridge** - Confirm transaction and track progress

### Daily GM Transaction

1. **Connect Wallet** - Connect to any supported network
2. **Select Network** - Browse 117+ networks or use search
3. **Send GM** - Click "GM" button and confirm transaction
4. **Share** - Optionally share on Farcaster

### Using Embedded Buttons

1. **Click Button** - On any website with embedded GM button
2. **Connect Wallet** - Modal opens with wallet connection
3. **Send GM** - Complete transaction with 15% discount
4. **Website Owner Earns** - Automatic 10% commission

---

## Security

### Wallet Security
- No private keys stored
- Client-side wallet integration
- User controls all transactions

### Transaction Security
- Slippage protection
- Price impact warnings
- Transaction simulation
- Gas estimation
- Approval management

### Data Security
- Supabase Row Level Security (RLS)
- Encrypted data transmission
- CORS policy enforcement
- XSS protection
- SQL injection prevention

### Referral Security
- Address validation (ethers.js)
- 24-hour expiry system
- Self-referral prevention
- On-chain validation

---

## FAQ

**Q: Is OnChainGM open source?**
A: Yes! The codebase is available for review and contributions.

**Q: Do I need API keys to use the app?**
A: No! The app works perfectly without any API keys.

**Q: How many networks are supported?**
A: 117 blockchain networks and growing!

**Q: What wallets can I use?**
A: Any wallet supported by RainbowKit: MetaMask, Coinbase Wallet, WalletConnect, and more.

**Q: How does the referral system work?**
A: Generate embed code with your wallet address, place it on your website, and earn 10% commission on all GM transactions made through your button.

**Q: When do I get paid?**
A: Instantly! Commissions are sent directly to your wallet on every transaction.

**Q: Can I cancel a bridge transaction?**
A: Once confirmed on-chain, transactions cannot be cancelled. Always verify details before confirming.

---

## Contributing

We welcome contributions from the community!

### Getting Started

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Commit (`git commit -m 'Add amazing feature'`)
5. Push (`git push origin feature/amazing-feature`)
6. Open a Pull Request

### Areas for Contribution

- Add new network support
- Improve UI/UX
- Fix bugs
- Add translations
- Write documentation
- Optimize performance

---


## Community & Support

### Get Help

- **Documentation:** [onchaingm.com/documentation](https://onchaingm.com/documentation)
- **Support Page:** [onchaingm.com/support](https://onchaingm.com/support)
- **Embed Widget:** [onchaingm.com/embed](https://onchaingm.com/embed)

### Stay Connected

- **Website:** [onchaingm.com](https://onchaingm.com)
- **Twitter:** [@onchaingm](https://twitter.com/onchaingm)
- **Farcaster:** [@onchaingm](https://warpcast.com/onchaingm)

---

## Acknowledgments

Built with amazing open-source technologies:

- [LiFi Protocol](https://li.fi/) - Bridge aggregation
- [Relay Protocol](https://relay.link/) - Fast bridging
- [RainbowKit](https://rainbowkit.com/) - Wallet UI
- [Wagmi](https://wagmi.sh/) - React hooks for Ethereum
- [Supabase](https://supabase.com/) - Backend infrastructure
- [Farcaster](https://farcaster.xyz/) - Web3 social protocol
- [Tailwind CSS](https://tailwindcss.com/) - CSS framework
- [Vite](https://vitejs.dev/) - Build tool

---

## License

This project is licensed under the MIT License.

---

## Disclaimer

OnChainGM is provided "as is" without warranty of any kind. Use at your own risk. Always verify transaction details before confirming. Never share your private keys or seed phrase.

---

<div align="center">

**Built with ❤️ for the Web3 community**

© 2024-2025 OnChainGM. All rights reserved.

[Website](https://onchaingm.com) • [Documentation](https://onchaingm.com/documentation) • [Embed Widget](https://onchaingm.com/embed) • [Support](https://onchaingm.com/support)

</div>
