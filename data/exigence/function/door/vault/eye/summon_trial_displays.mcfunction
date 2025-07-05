# Called by vault/(vault)/open
#   Summons text/item displays above the altars to inform trial choice

## CONSTRAINTS
#   AS/AT Trial altar

## INPUT
#   Rotation[] - Rotation array from entity data

#============================================================================================================

# DEBUG
#$say trial $(Rotation)

$summon minecraft:text_display ^ ^2.5 ^-1.4 {background:1,line_width:150,Rotation:$(Rotation),Tags:["VaultTrialDisplay","NewVaultTrialDisplay"],billboard:'fixed',text:[{text:"Trial of Sight",color:"aqua"}]}

$summon minecraft:text_display ^-0.5 ^2 ^-1.4 {background:1,line_width:150,Rotation:$(Rotation),Tags:["VaultTrialDisplay","NewVaultTrialDisplay"],billboard:'fixed',text:[{text:"Unlocks:",color:"gray"}]}

$execute positioned ^0.5 ^2 ^-1.2 run function exigence:door/vault/vault_item_display {menu_tag:'VaultDisplayEye',item_name:'ember_lantern',Rotation:'$(Rotation)'}
