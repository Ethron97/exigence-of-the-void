# Loss message

## CONSTRAINTS
#   AS player

#====================================================================================================

# Send message to player
execute if entity @s[tag=Trial] run tellraw @s [{text:"[!]",color:"red"},{text:" Failed the ",color:"gray"}\
,{text:"Trial of Lightning ",color:"yellow"},{sprite:"minecraft:item/bolt_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] run tellraw @s [{text:"[!]",color:"red"},{text:" Failed the ",color:"gray"}\
,{text:"Crucible of Lightning ",color:"light_purple"},{sprite:"minecraft:item/bolt_armor_trim_smithing_template",atlas:"items",color:"white"}]

execute unless entity @s[tag=Game] run return 0
#----------------------------------------------------------------------------------------------------

# COOP - Show title to all other players
execute if entity @s[tag=Trial] as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 1 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=1},tag=Game]",color:"red"},\
{text:" failed the ",color:"gray"},{text:"Trial of Lightning ",color:"yellow"},{sprite:"minecraft:item/bolt_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 1 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=1},tag=Game]",color:"red"},\
{text:" failed the ",color:"gray"},{text:"Crucible of Lightning ",color:"light_purple"},{sprite:"minecraft:item/bolt_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 1 run title @s title ""