# Called from load modifiers b when player enters with deck helmet

#====================================================================================================

scoreboard players add mod.void_keep game.modifiers 3

# Mark 3 void cards as return
#execute in minecraft:overworld run tag @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10\
,type=minecraft:armor_stand,tag=Card,tag=IsVoid,tag=!ReturnCard,limit=3,sort=random] add ReturnCard