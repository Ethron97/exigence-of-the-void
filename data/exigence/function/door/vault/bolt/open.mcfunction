# Called by door/vault/open_vault

## CONSTRAINTS
#   AT vault node

#====================================================================================================

# Clear main door
fill -397 153 -17 -397 155 -19 air destroy

# Main display
summon minecraft:text_display -404.9 155.50 -17.5 {alignment:"center",background:1,line_width:150,Rotation:[-90.0f,0.0f]\
,Tags:["VaultTrialDisplay","NewVaultTrialDisplay"],billboard:'fixed',text:[{text:"Light an altar to begin",color:"yellow"}]}
