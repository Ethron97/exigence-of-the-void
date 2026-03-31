scoreboard players set #card_count_temp DungeonRun 0
execute as @e[type=minecraft:armor_stand,scores={Deck=1..},tag=Card,tag=!Played,tag=!Spellbound] run scoreboard players add #card_count_temp DungeonRun 1
scoreboard players operation Cards DungeonRun = #card_count_temp DungeonRun