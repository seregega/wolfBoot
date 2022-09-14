PS F:\_rabota\wolfBoot\IDE\IAR> keytools\sign.exe --aes256 --ecc256 .\Debug\Exe\image2.bin ../../wolfboot_signing_private_key.der   ..\..\enc_key.der   3
wolfBoot KeyTools (Compiled C version)
wolfBoot version 10B0000
Update type:          Firmware
Encryption Algorithm: AES256-CTR
Input image:          .\Debug\Exe\image2.bin
Selected cipher:      ECC256
Selected hash  :      SHA256
Public key:           ../../wolfboot_signing_private_key.der
Output  image:        .\Debug\Exe\image2_v..\..\enc_key.der_signed.bin
Encrypted output:     .\Debug\Exe\image2_v..\..\enc_key.der_signed_and_encrypted.bin
Target partition id : 1
Calculating SHA256 digest...
Signing the digest...
Output image(s) successfully created.

F:\_rabota\wolfBoot\IDE\IAR> keytools\sign.exe --aes256 --ecc256 image2.bin wolfboot_signing_private_key.der enc_key.der 3
wolfBoot KeyTools (Compiled C version)
wolfBoot version 10B0000
Update type:          Firmware
Encryption Algorithm: AES256-CTR
Input image:          image2.bin
Selected cipher:      ECC256
Selected hash  :      SHA256
Public key:           wolfboot_signing_private_key.der
Output  image:        image2_venc_key.der_signed.bin
Encrypted output:     image2_venc_key.der_signed_and_encrypted.bin
Target partition id : 1
Calculating SHA256 digest...
Signing the digest...
Output image(s) successfully created.

python3 ~/wolfBoot/tools/keytools/sign.py --aes256 --encrypt enc_key.der 2.bin wolfboot_signing_private_key.der 3