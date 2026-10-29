tellraw @a[tag=ActivePlayer] [{text:"▲▲▲",color:"gray",bold:true},{text:" Acended ",color:"yellow",bold:false},{text:"▲▲▲",color:"gray",bold:true}]

# Trigger hazard on lower levels:
execute if score game.active_level game.state matches 2.. run function exigence:hazard/proc_hazard {level:1,amount:1,type:"other"}

execute if score game.active_level game.state matches 3.. run function exigence:hazard/proc_hazard {level:2,amount:1,type:"other"}

execute if score game.active_level game.state matches 4 run function exigence:hazard/proc_hazard {level:3,amount:1,type:"other"}

# Trigger ascend cards:
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=Ascend] run function exigence:deck/play_ascend with entity @s equipment.mainhand.components."minecraft:custom_data"

# If (living) player has Sun Plate, trigger
execute as @a[scores={dead=0,game.player.mod.sun_plate=1..},tag=ActivePlayer] run function exigence:player/modifiers/sun_plate_ascend

# Revive dead players (pending)
#execute as @a[scores={dead=2},tag=ActivePlayer] run function exigence:player/death/revive
#execute as @a[scores={dead=2},tag=ActivePlayer] run scoreboard players set @s game.player.revive_pending 1
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=Active] run function exigence:player/death/check_revive_player
