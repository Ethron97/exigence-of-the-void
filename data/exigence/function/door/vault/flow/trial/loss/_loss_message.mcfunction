# Loss message

## CONSTRAINTS
#   AS player

#====================================================================================================

# Send message to player
execute if entity @s[tag=Trial] run tellraw @s [{text:"[!]",color:"red"},{text:" Failed the ",color:"gray"}\
,{text:"Trial of Motion ",color:"yellow"},{sprite:"minecraft:item/flow_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] run tellraw @s [{text:"[!]",color:"red"},{text:" Failed the ",color:"gray"}\
,{text:"Crucible of Motion ",color:"light_purple"},{sprite:"minecraft:item/flow_armor_trim_smithing_template",atlas:"items",color:"white"}]

execute unless entity @s[tag=Game] run return 0
#----------------------------------------------------------------------------------------------------

# COOP - Show title to all other players
execute if entity @s[tag=Trial] as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 6 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=6},tag=Game]",color:"red"},\
{text:" failed the ",color:"gray"},{text:"Trial of Motion ",color:"yellow"},{sprite:"minecraft:item/flow_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 6 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=6},tag=Game]",color:"red"},\
{text:" failed the ",color:"gray"},{text:"Crucible of Motion ",color:"light_purple"},{sprite:"minecraft:item/flow_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 6 run title @s title ""