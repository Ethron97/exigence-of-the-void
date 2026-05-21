# Recount remaining cards in the deck that are playable

#====================================================================================================

execute if score toggle.deck debug matches 1 if score debug.level debug matches 3.. run say (D3) Update card counter

scoreboard players set #temp Temp 0
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,scores={game.deck=1..},tag=Card,tag=!Played,tag=!Spellbound] run scoreboard players add #temp Temp 1
scoreboard players operation .cards game.dungeon = #temp Temp