# stream-cipher-verilog
# Stream Cipher Implementation in Verilog

## 📌 Project Overview
This project implements a simple hardware-based Stream Cipher using multiple Linear Feedback Shift Registers (LFSRs) in Verilog.

The goal of this project is to understand:
- LFSR design
- Keystream generation
- Nonlinear combination functions
- Stream cipher encryption and decryption

## 🔐 How It Works

Three LFSRs with different lengths are used:
- 5-bit LFSR
- 7-bit LFSR
- 9-bit LFSR

Each LFSR generates a pseudo-random bit stream.

The keystream is generated using a nonlinear combination:

keystream = (a & b) ^ c

Encryption:
ciphertext = plaintext ^ keystream

Decryption:
decrypted = ciphertext ^ keystream


## 🧪 Simulation

Testbenches were written to verify:
- Correct LFSR operation
- Proper keystream generation
- Correct encryption
- Correct decryption

Waveform results confirm that:
decrypted = plaintext


## 🛠 Tools Used
- Verilog HDL
- ModelSim (for simulation)


## 📚 Concepts Covered
- Linear Feedback Shift Register (LFSR)
- Stream Cipher
- Nonlinear Boolean Functions
- Hardware-based Cryptography
