# KvlarG for UGGame Exploitation CLI

KvlarG is a CLI (Command-line Interface) tool designed to retrieve account credentials from the UGGame app, which is vulnerable to exploitation.

UGGame is available on Google Play!
[UGGame - Indonesia](https://play.google.com/store/apps/details?id=com.dofun.zhw.abroad.indonesia)



## Table of Contents
1. [Introduction](#introduction)
   - [Purpose](#purpose)
   - [Features](#features)
2. [Disclaimer](#disclaimer)
3. [Getting Started](#getting-started)
   - [Prerequisites](#prerequisites)
   - [Installation](#installation)
4. [Usage](#usage)
   - [Basic Commands](#basic-commands)
   - [Demo Video](#demo-video)
5. [How It Works?](#how-it-works)
   - [Decryptor Function](#decryptor-function)
   - [Main Function](#main-function)
6. [Documentation](#documentation)
   - [Configuration](#configuration)
   - [Troubleshooting](#troubleshooting)
7. [Resources](#resources)
   - [References](#references)
8. [Acknowledgments](#acknowledgments)
9. [Question & Answer](#qna)
10. [Contact](#contact)



## Introduction

### Purpose
KvlarG is created for educational purposes to provide a deeper understanding of hacking concepts.

### Features
- Decrypt user credentials using RC4 cipher.
- Extract and save user credentials.
- Easy-to-use command-line interface (CLI).



## Disclaimer
**English:**
> This tool was created solely for fun, work, educational and documentation purposes only. educational and documentation purposes. I do not support or encourage any kind of hacking or unethical use of the information provided. I am not responsible for inappropriate use of the information provided by these tools.

**Indonesia:**
> Alat ini dibuat hanya untuk tujuan bersenang-senang, pekerjaan, pendidikan dan dokumentasi saja. Saya tidak mendukung atau mendorong segala jenis peretasan atau penggunaan yang tidak etis atas informasi yang diberikan. Saya tidak bertanggung jawab atas penggunaan yang tidak tepat dari informasi yang disediakan oleh tools ini.



## Getting Started

### Prerequisites
- Ensure your Android device has root privilege (superuser).
- Recommended terminal: [MT Manager Terminal](https://apkpure.net/id/mt-manager/bin.mt.plus/download).

### Installation
1. Download and install MT Manager from [this link](https://apkpure.net/id/mt-manager/bin.mt.plus/download).
2. [Download this project](https://github.com/kvlarbyte/KvlarG/archive/refs/heads/main.zip) and move to internal storage.



## Usage

### How to run this tool
1. Login to the UGGame application.
2. Purchase the product or account you want to rent (make sure you have sufficient balance).
3. Open the terminal and execute the following command:
    ```sh
    su
    cd /sdcard/KvlarG
    chmod +x kvlar.sh
    ./kvlar.sh
    ```
    or one-line command:
    ```sh
    su && cd /sdcard/KvlarG && chmod +x kvlar.sh && ./kvlar.sh
    ```
4. Follow the on-screen instructions.

### Demo Video
Check out our demo video to see KvlarG in action:

[![Watch the demo video](https://img.youtube.com/vi/EcZeC4mSazE/hqdefault.jpg)](https://youtu.be/EcZeC4mSazE?si=FlAwy4u9Jqxf9YCL)

*Video Disclaimer:* This video is provided for educational and demonstration purposes only. It showcases how to use the tool in a controlled environment. The creator does not endorse or encourage any illegal activities or unethical behavior. The use of this tool should comply with all applicable laws and regulations. The creator is not responsible for any misuse of the information or software shown in this video.



## How It Works?

### Decryptor Function
The `kvlarSolver` function uses the RC4 encryption algorithm to decrypt user credentials. The process involves:
1. Converting the key to an array of ASCII values.
2. Initializing the S-box.
3. Performing the Key-Scheduling Algorithm (KSA) and Pseudo-Random Generation Algorithm (PRGA) to decrypt the ciphertext.

### Main Function
1. Displaying a banner and logging messages.
2. Checking for the existence of the `user_cache` file and copying it to the cache directory.
3. Extracting account and password data from the `user_cache` file.
4. Decrypting the extracted data using the `kvlarSolver` function.
5. Saving the decrypted credentials to a log file.



## Documentation

### Configuration
- The tool requires a specific file path and decryption key for decryption.
- Ensure the correct paths and permissions are set for the tool to function properly.

### Troubleshooting
- Common issues:
  - `user_cache not found`: Ensure the file path is correct (Make sure that u have made a purchase on uggame).
  - `email and password failed to be retrieved`: Ensure the correct decryption key and data format.



## Resources

### References
- [Wikipedia RC4](https://en.m.wikipedia.org/wiki/RC4)



## Acknowledgments
- Inspired by [PSTeamAdm](https://t.me/PSTeamAdm)



## QNA

### Q1: **What is the main purpose of KvlarG?**
**A:** KvlarG is a CLI tool designed for educational purposes to demonstrate how to retrieve and decrypt account credentials from the UGGame app, highlighting vulnerabilities in software security.

### Q2: **Is it legal to use KvlarG on any UGGame account?**
**A:** No, using KvlarG on accounts that you do not own or have explicit permission to access is illegal and unethical. This tool is meant solely for educational purposes and testing within legal boundaries.

### Q3: **What platforms does KvlarG support?**
**A:** KvlarG is designed to run on Android devices with root access, utilizing a terminal environment like MT Manager Terminal.

### Q4: **Do I need root access to use KvlarG?**
**A:** Yes, root access (superuser privileges) is required on your Android device to use KvlarG because it needs to access system files that are typically restricted.

### Q5: **How does KvlarG decrypt credentials?**
**A:** KvlarG uses the RC4 encryption algorithm to decrypt user credentials stored in the UGGame app’s cache file.

### Q6: **Can I use this tool on non-rooted devices?**
**A:** No, this tool requires root privileges to access necessary files and execute commands properly.

### Q7: **What should I do if I encounter an error during execution?**
**A:** First, ensure that all prerequisites are met (e.g., root access, correct file paths, permissions). Check the troubleshooting section for common issues and solutions.

### Q8: **Is there any support available for this tool?**
**A:** As this tool is created for educational purposes, official support is limited. However, you can reach out to the developer via the contact information provided.

### Q9: **Can KvlarG be modified for other applications?**
**A:** No, while it is technically possible to modify KvlarG for other applications, doing so could violate legal and ethical guidelines. It is strongly advised to use this tool only for its intended educational purpose.

### Q10: **Where can I see a demonstration of KvlarG?**
**A:** A demo video is available, showcasing how to use the tool. You can find it linked in the Usage section of this document.

### Q11: **Why is root access necessary?**
**A:** Root access allows the tool to access restricted system files where the UGGame app stores user credentials, which is crucial for the decryption process.

### Q12: **What should I do if I cannot find the `user_cache` file?**
**A:** Ensure that the file path is correct and that you have the necessary permissions to access the file. If the file is still not found, it could be due to app updates or changes in how the app stores data. **Also make sure you have placed an order on the UGGame app**

### Q13: **If this is illegal, why are you publishing it? Isn’t it possible that someone might use it for illegal purposes?**
**A:** Yes, I am aware of that. Before addressing this concern, it's important to understand the purpose of KvlarG. While it's true that someone could misuse the tool, it is ultimately the responsibility of each individual to use it ethically and legally.

### Q14: **Why haven't you reported this vulnerability to UGGame?**
**A:** I feel that it is not my obligation to do so, especially since the concept of exploiting UGGame has already spread widely on Telegram due to leaks video from PsTeamADM.



## Contact
For questions or feedback, please contact [kvlarbyte](mailto:kvlar0-byte@protonmail.com).
