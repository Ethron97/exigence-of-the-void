# Called from load_modifiers_b

## CONSTRAINTS
#   AS Player wearing a helmet

#==================================================================================================================

## ====================== HELMETS ======================
# Berry Vision
#execute if items entity @s armor.head leather_helmet[custom_data run scoreboard players set @s game.player.mod.berry_vision 1
execute if predicate exigence:equipment/helmet/berry_a run scoreboard players set @s game.player.mod.berry_vision 1

# Beast Vision
execute if predicate exigence:equipment/helmet/beast_a run scoreboard players set @s game.player.mod.beast_vision 1
execute if predicate exigence:equipment/helmet/beast_b run scoreboard players set @s game.player.mod.beast_vision 2
execute if predicate exigence:equipment/helmet/beast_c run scoreboard players set @s game.player.mod.beast_vision 3
execute if predicate exigence:equipment/helmet/beast_d run scoreboard players set @s game.player.mod.beast_vision 4
execute if predicate exigence:equipment/helmet/beast_e run scoreboard players set @s game.player.mod.beast_vision 5
execute if predicate exigence:equipment/helmet/beast_f run scoreboard players set @s game.player.mod.beast_vision 6
execute if predicate exigence:equipment/helmet/beast_g run scoreboard players set @s game.player.mod.beast_vision 7

# Glimmer Vision
execute if predicate exigence:equipment/helmet/glimmer_a run scoreboard players set @s game.player.mod.glimmer 1
execute if predicate exigence:equipment/helmet/glimmer_b run scoreboard players set @s game.player.mod.glimmer 2
execute if predicate exigence:equipment/helmet/glimmer_c run scoreboard players set @s game.player.mod.glimmer 3
execute if predicate exigence:equipment/helmet/glimmer_d run scoreboard players set @s game.player.mod.glimmer 4
execute if predicate exigence:equipment/helmet/glimmer_e run scoreboard players set @s game.player.mod.glimmer 5
execute if predicate exigence:equipment/helmet/glimmer_f run scoreboard players set @s game.player.mod.glimmer 6
execute if predicate exigence:equipment/helmet/glimmer_g run scoreboard players set @s game.player.mod.glimmer 7

# Flicker Vision
execute if predicate exigence:equipment/helmet/flicker_a run scoreboard players set @s game.player.mod.flicker 1
execute if predicate exigence:equipment/helmet/flicker_b run scoreboard players set @s game.player.mod.flicker 2
execute if predicate exigence:equipment/helmet/flicker_c run scoreboard players set @s game.player.mod.flicker 3
execute if predicate exigence:equipment/helmet/flicker_d run scoreboard players set @s game.player.mod.flicker 4

# Mirror Vision
execute if predicate exigence:equipment/helmet/mirror_a run scoreboard players set @s game.player.mod.mirror_vision 1

# Detection
execute if predicate exigence:equipment/helmet/detection_a run scoreboard players set @s game.player.mod.detection 1
execute if predicate exigence:equipment/helmet/detection_b run scoreboard players set @s game.player.mod.detection 2
execute if predicate exigence:equipment/helmet/detection_c run scoreboard players set @s game.player.mod.detection 3
execute if predicate exigence:equipment/helmet/detection_d run scoreboard players set @s game.player.mod.detection 4
execute if predicate exigence:equipment/helmet/detection_e run scoreboard players set @s game.player.mod.detection 5

# Luminous Vision (old)
#execute if entity @s[nbt={Inventory:[{id:"minecraft:golden_helmet",components:{"minecraft:custom_data":{item_name:'helmet_luminous_a'}}}]}] run scoreboard players set @s game.player.mod.flicker 3
#execute if entity @s[nbt={Inventory:[{id:"minecraft:golden_helmet",components:{"minecraft:custom_data":{item_name:'helmet_luminous_a'}}}]}] run scoreboard players set @s game.player.mod.glimmer 3
#execute if entity @s[nbt={Inventory:[{id:"minecraft:golden_helmet",components:{"minecraft:custom_data":{item_name:'helmet_luminous_b'}}}]}] run scoreboard players set @s game.player.mod.flicker 6
#execute if entity @s[nbt={Inventory:[{id:"minecraft:golden_helmet",components:{"minecraft:custom_data":{item_name:'helmet_luminous_b'}}}]}] run scoreboard players set @s game.player.mod.glimmer 6
