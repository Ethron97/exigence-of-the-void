# Go through card types in order so we can force the display order

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

# Force order by querying in groups
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=!Played,scores={deck.card.rarity=5},tag=!Spellbound] run function exigence:bossbar/deck/add_display/unplayed/dev
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=!Played,scores={deck.card.rarity=5},tag=Spellbound] run function exigence:bossbar/deck/add_display/unplayed/dev_spellbind
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=!Played,scores={deck.card.rarity=4},tag=!Spellbound] run function exigence:bossbar/deck/add_display/unplayed/legendary
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=!Played,scores={deck.card.rarity=4},tag=Spellbound] run function exigence:bossbar/deck/add_display/unplayed/legendary_spellbind
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=!Played,scores={deck.card.rarity=3},tag=!Spellbound] run function exigence:bossbar/deck/add_display/unplayed/rare
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=!Played,scores={deck.card.rarity=3},tag=Spellbound] run function exigence:bossbar/deck/add_display/unplayed/rare_spellbind
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=!Played,scores={deck.card.rarity=2},tag=!Spellbound] run function exigence:bossbar/deck/add_display/unplayed/uncommon
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=!Played,scores={deck.card.rarity=2},tag=Spellbound] run function exigence:bossbar/deck/add_display/unplayed/uncommon_spellbind
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=!Played,scores={deck.card.rarity=1},tag=!Spellbound] run function exigence:bossbar/deck/add_display/unplayed/common
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=!Played,scores={deck.card.rarity=1},tag=Spellbound] run function exigence:bossbar/deck/add_display/unplayed/common_spellbind

execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=Played] run function exigence:bossbar/deck/add_display/played