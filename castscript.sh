#! /bin/sh
export CONTRACT=0x7573933eB12Fa15D5557b74fDafF845B3BaF0ba2
export RPC_URL=https://polygon.blockpi.network/v1/rpc/public
export TOKEN_ID=3667905539
export PRIVATE_KEY=

### Local Test

#cast call --trace $CONTRACT \
#    "feedCat(uint256 tokenId)" $TOKEN_ID\
#    --rpc-url $RPC_URL \
#    --private-key $PRIVATE_KEY

### Execute
#### Feed

cast send $CONTRACT \
    "feedCat(uint256 tokenId)" $TOKEN_ID\
    --rpc-url $RPC_URL \
    --private-key $PRIVATE_KEY

#### Clean
cast send --trace $CONTRACT \
    "cleanCat(uint256 tokenId)" $TOKEN_ID\
    --rpc-url $RPC_URL \
    --private-key $PRIVATE_KEY
