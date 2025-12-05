# Pick treasure node to drop key on
execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=1},tag=!L0,tag=!KeyDropper,tag=!KeyBlacklist,limit=1,sort=random] run function exigence:treasure/keys/private/drop_key_1

# Progress iteration
scoreboard players remove #i Temp 1
execute if score #i Temp matches 1.. run function exigence:treasure/keys/drop_mirror_mine_keys