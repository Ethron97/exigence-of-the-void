# Called from anger_update

## CONSTRAINTS
#   AS warden

#====================================================================================================

execute if score toggle.enemy debug matches 1 if score debug.level debug matches 3.. run say (D3) Unsilenced

tag @s remove Silenced

data modify entity @s Silent set value false
