# Level key tick

## CONSTRAINTS
#   AS/AT level key (item)

#====================================================================================================

execute if entity @a[scores={dead=0},tag=ActivePlayer,distance=..32] run particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 2
execute if entity @a[scores={dead=0},tag=ActivePlayer,distance=..32] run particle minecraft:enchanted_hit ~ ~0.5 ~ 0 0 0 0.5 1
#execute if score seconds.cooldown tick_counter matches 6 if entity @a[scores={dead=0},tag=ActivePlayer,distance=..32] run particle minecraft:enchant ~ ~1.2 ~ 0 0 0 2 2
#execute if score seconds.cooldown tick_counter matches 6 if entity @a[scores={dead=0},tag=ActivePlayer,distance=..32] run particle minecraft:enchanted_hit ~ ~0.2 ~ 0 0 0 1 1
#execute if score seconds.cooldown tick_counter matches 16 if entity @a[scores={dead=0},tag=ActivePlayer,distance=..32] run particle minecraft:enchant ~ ~1.2 ~ 0 0 0 2 2
#execute if score seconds.cooldown tick_counter matches 16 if entity @a[scores={dead=0},tag=ActivePlayer,distance=..32] run particle minecraft:enchanted_hit ~ ~0.2 ~ 0 0 0 1 1
