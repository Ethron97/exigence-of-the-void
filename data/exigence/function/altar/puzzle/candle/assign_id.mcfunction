## CONSTRAINTS
#   AS PuzzleCandle

scoreboard players set #highest game.story.puzzle_candle_id 0
execute as @e[x=-415,y=151,z=-68,dx=18,dy=11,dz=23,type=minecraft:marker,tag=PuzzleCandle] run scoreboard players operation #highest game.story.puzzle_candle_id > @s game.story.puzzle_candle_id

scoreboard players add #highest game.story.puzzle_candle_id 1
scoreboard players operation @s game.story.puzzle_candle_id = #highest game.story.puzzle_candle_id
