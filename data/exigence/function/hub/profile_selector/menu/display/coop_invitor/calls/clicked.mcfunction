# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS item shop display

## INPUT
#   data

#=============================================================================================================

#say Clicked coop invitor

execute if entity @s[tag=Confirm] run say Clicked confirm


execute if entity @s[tag=Invite] run say Clicked invite
# TODO Cancel existing invite
execute if entity @s[tag=Invite] run scoreboard players enable @p[distance=..16,tag=ProfileSelecting,tag=Interacting] SendCoopInvite
execute if entity @s[tag=Invite] run tellraw @p[distance=..16,tag=ProfileSelecting,tag=Interacting] [{text:"Use ",bold:false,color:"gray"},{text:"/trigger SendCoopInvite set ",color:green},{text:"<player code>",color:gold},{text:" \
to invite a friend. Your friend may need to provide their unique player code. They can view it while they are in the profile selector room\
, or by using "},{text:"/trigger MyPlayerID",color:"dark_green"}]

# Effects
execute at @s run playsound minecraft:entity.ender_eye.death ui @a ~ ~ ~ 1 1
execute at @s run particle glow ~ ~ ~0.1 0.1 0.1 0.0 0.001 5
