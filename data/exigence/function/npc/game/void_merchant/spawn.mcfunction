# Summon void merchant NPC

## CONSTRAINTS
#   AT location

## INPUT
#   STR block - storage path to minecraft block for enderman holding

#====================================================================================================

$summon enderman ~ ~ ~ {Tags:["VoidMerchant","NewVoidMerchant","ETICK"]\
,carriedBlockState:{Name:"$(block)"},NoAI:1,CustomName:{text:"Void Merchant",color:"dark_purple",italic:false}}

execute as @e[type=minecraft:enderman,tag=NewVoidMerchant,distance=..1] run function exigence:npc/game/void_merchant/setup_vm