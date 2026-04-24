# Called by door/vault/open_vault

## CONSTRAINTS
#   AT vault node

#====================================================================================================

# Clear main door
fill -373 153 -11 -373 155 -9 air destroy

# Main display
summon minecraft:text_display -364.1 155.5 -9.5 {background:1,line_width:150,Rotation:[90.0f,0.0f],Tags:["VaultTrialDisplay","NewVaultTrialDisplay"],billboard:'fixed',text:[{text:"Light an altar to begin",color:"yellow"}]}
