/* Keystore file for wolfBoot, automatically generated. Do not edit.  */
/*
 * This file has been generated and contains the public keys
 * used by wolfBoot to verify the updates.
 */
#include <stdint.h>
#include "wolfboot/wolfboot.h"
#ifdef WOLFBOOT_NO_SIGN
	#define NUM_PUBKEYS 0
#else

#if (KEYSTORE_PUBKEY_SIZE != KEYSTORE_PUBKEY_SIZE_ECC256)
	#error Key algorithm mismatch. Remove old keys via 'make distclean'
#else
#define NUM_PUBKEYS 1
const struct keystore_slot PubKeys[NUM_PUBKEYS] = {

	 /* Key associated to file 'wolfboot_signing_private_key.der' */
	{
		.slot_id = 0,
		.key_type = AUTH_KEY_ECC256,
		.part_id_mask = KEY_VERIFY_ALL,
		.pubkey_size = KEYSTORE_PUBKEY_SIZE_ECC256,
		.pubkey = {
			
			0x32, 0x6c, 0xcd, 0x3b, 0x39, 0x4f, 0x0c, 0xf4,
			0xa7, 0x50, 0x52, 0xf5, 0x2d, 0x4a, 0x52, 0x90,
			0x9c, 0xc7, 0x60, 0x9d, 0xe4, 0x82, 0xe6, 0xc1,
			0x50, 0x5c, 0x13, 0x70, 0x1e, 0x03, 0xba, 0x6d,
			0x86, 0x5c, 0x3b, 0xba, 0x13, 0x91, 0x3c, 0xa1,
			0xb6, 0x3c, 0x67, 0x75, 0x34, 0xe4, 0x94, 0x32,
			0xa9, 0xa9, 0x68, 0xf9, 0x5e, 0x50, 0x23, 0x61,
			0xa6, 0xb3, 0x2d, 0x39, 0x37, 0x1f, 0xae, 0x89
		},
	},


};

int keystore_num_pubkeys(void)
{
    return NUM_PUBKEYS;
}

uint8_t *keystore_get_buffer(int id)
{
    if (id >= keystore_num_pubkeys())
        return (uint8_t *)0;
    return (uint8_t *)PubKeys[id].pubkey;
}

int keystore_get_size(int id)
{
    if (id >= keystore_num_pubkeys())
        return -1;
    return (int)PubKeys[id].pubkey_size;
}

uint32_t keystore_get_mask(int id)
{
    if (id >= keystore_num_pubkeys())
        return -1;
    return (int)PubKeys[id].part_id_mask;
}

#endif /* Keystore public key size check */
#endif /* WOLFBOOT_NO_SIGN */
