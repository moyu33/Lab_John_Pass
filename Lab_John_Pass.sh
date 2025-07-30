# LAB JOHN THE RIPPER PASSWORD CRACKED ✅
#! /bin/bash

# Hashing first password with SHA-512 and show.
mkpasswd -m sha-512 passwordcheck > h1.txt
cat h1.txt

# Create a fictitious word list and show.
echo -e “12345\npassword1\npasswd2\nqwerty\npasswordcheck” > d1.txt
cat d1.txt

# First call John with a word list attack.
john -- wordlist=d1.txt h1.txt

john -- show h1.txt

# Hashing second password with SHA-512 and show.
mkpasswd -m sha-512 ab1 > h2.txt
cat h2.txt

#Second call John with a brute-force attack.
john -- format=sha512crypt -- incremental=ASCII h1.txt

john -- show h1.txt

# DISCLAIMER:
# This script is for educational and demonstration purposes only.
# It is intended to be used in controlled, legal environments such as labs or CTF challenges.
# Using John the Ripper against systems you do not own or lack explicit authorization to test is illegal.
# The author is not responsible for any misuse or damage resulting from the execution of this script.
