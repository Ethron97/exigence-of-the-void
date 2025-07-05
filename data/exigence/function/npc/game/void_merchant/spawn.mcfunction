# Summon void merchant NPC

## CONSTRAINTS
# Only if difficulty 3

## INPUT
#   STR block - storage path to minecraft block for enderman holding

#=====================================================================================================

$summon enderman -384.5 188.00 -34.5 {Tags:["VoidMerchant"],carriedBlockState:{Name:"$(block)"},NoAI:1,CustomName:{text:"Void Merchant",color:"dark_purple",italic:false}}
