

if "%~1"=="" goto fail

keytools\sign.exe --ecc256 --sha256 Debug\Exe\blink.bin ..\..\wolfboot_signing_private_key.der %1

goto out

:fail
 echo please specify a version number.

:out

