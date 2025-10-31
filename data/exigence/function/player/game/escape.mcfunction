# Handles player escaping from the dungeon on an individual level

## CONSTRAINTS
#   AS Player

#=======================================================================================================

say I escaped

# Teleport the player to the Ember Shop.
execute at @e[type=minecraft:armor_stand,tag=EmberShop,limit=1] run teleport @s ~ ~ ~ ~ ~
tag @s add EmberShopping
team join EmberShop @s
tag @s[tag=!PrimaryPlayer] add CoopEmberShopping

# Add "Won" tag
tag @s add Won

# Reset gamemode
gamemode adventure @s

# Clear specific items
clear @s #exigence:win_clear

# If VaultKeep is 1, do not clear vault keys
clear @s[scores={game.player.mod.vault_keep=0}] #exigence:trim_templates

# If portal is not yet opened, create portal effect
execute if data storage exigence:dungeon {escape_portal:0} run scoreboard players set exit.portal.countdown tick_counter 200

# Open "potal"
data modify storage exigence:dungeon escape_portal set value 1

# Kick people out of Ember Viewing
teleport @a[tag=EmberViewing] -260.5 17.00 -44.5
tellraw @a[tag=EmberViewing] {text:"Make way for the victorious",color:"blue"}
team leave @a[team=EmberView]
tag @a[tag=EmberViewing] remove EmberViewing

# Give appropriate advancement if rescued NPC
execute if entity @s[tag=Carrying] if score #Supplier game.dialogue matches 5.. as @a[tag=ActivePlayer,limit=1,sort=arbitrary] run function exigence:profile/profile_node/story/grant {story:'rescue_supplier'}
execute if entity @s[tag=Carrying] if score #Scientist game.dialogue matches 8.. as @a[tag=ActivePlayer,limit=1,sort=arbitrary] run function exigence:profile/profile_node/story/grant {story:'rescue_scientist'}
execute if entity @s[tag=Carrying] if score #Petitioner game.dialogue matches 7.. as @a[tag=ActivePlayer,limit=1,sort=arbitrary] run function exigence:profile/profile_node/story/grant {story:'rescue_petitioner'}
