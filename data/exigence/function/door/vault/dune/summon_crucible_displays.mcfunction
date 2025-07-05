# Called by vault/(vault)/open
#   Summons text/item displays above the altars to inform trial choice

## CONSTRAINTS
#   AS/AT Crucible altar

## INPUT
#   Rotation[] - Rotation array from entity data

#============================================================================================================

# DEBUG
#$say crucible $(Rotation)

$summon minecraft:text_display ^ ^2.5 ^-1.4 {background:1,line_width:150,Rotation:$(Rotation),Tags:["VaultTrialDisplay","NewVaultTrialDisplay"],billboard:'fixed',text:[{text:"Crucible of Dust",color:"light_purple"}]}

$summon minecraft:text_display ^0 ^2 ^-1.4 {background:1,line_width:150,Rotation:$(Rotation),Tags:["VaultTrialDisplay","NewVaultTrialDisplay"],billboard:'fixed',text:[{text:"Increased difficulty",color:"gray"}]}
$summon minecraft:text_display ^0 ^1.7 ^-1.4 {background:1,line_width:150,Rotation:$(Rotation),Tags:["VaultTrialDisplay","NewVaultTrialDisplay"],billboard:'fixed',text:[{text:"Increased rewards",color:"gray"}]}
$summon minecraft:text_display ^-0.5 ^1.4 ^-1.4 {background:1,line_width:150,Rotation:$(Rotation),Tags:["VaultTrialDisplay","NewVaultTrialDisplay"],billboard:'fixed',text:[{text:"Unlocks:",color:"gray"}]}

$execute positioned ^0.5 ^1.4 ^-1.2 run function exigence:door/vault/vault_item_display {menu_tag:'VaultDisplayDune',item_name:'gold_idol',Rotation:'$(Rotation)'}
