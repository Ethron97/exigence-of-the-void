say trigger ascend functions

# Trigger hazard on lower levels:
execute if score ActiveLevel DungeonRun matches 2.. run function exigence:hazard/proc_hazard {level:1,amount:1,type:"other"}

execute if score ActiveLevel DungeonRun matches 3.. run function exigence:hazard/proc_hazard {level:2,amount:1,type:"other"}

execute if score ActiveLevel DungeonRun matches 4 run function exigence:hazard/proc_hazard {level:3,amount:1,type:"other"}

# Trigger ascend cards:
execute as @e[type=minecraft:armor_stand,tag=Card,tag=Ascend] run function exigence:deck/play_ascend with entity @s equipment.mainhand.components."minecraft:custom_data"

# If (living) player has Sun Plate, trigger
execute as @a[tag=ActivePlayer,scores={dead=0,game.player.mod.sun_plate=1..}] run function exigence:player/modifiers/sun_plate_ascend

# Revive dead players
execute as @a[tag=ActivePlayer,scores={dead=2}] run function exigence:player/death/revive
