# Update display color/bold/italic

## CONSTRAINTS
#   AS coop player display

#====================================================================================================

#say (D3) Update display

scoreboard players operation #compare hub.entity.player_id = @s hub.entity.player_id
scoreboard players operation #compare profile.player.coop_profile_id = @s Random

# Update color depending on status of the player
#   Default nonbold, italic
data modify entity @s text.extra[0].color set value "#847651"
data modify entity @s text.extra[0].italic set value true
data modify entity @s text.extra[0].bold set value false

#   If player is online
scoreboard players set #temp Temp 0
execute as @a if score @s career.player_id = #compare hub.entity.player_id run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 1 run data modify entity @s text.extra[0].color set value "#847651"
execute if score #temp Temp matches 1 run data modify entity @s text.extra[0].italic set value false
execute if score #temp Temp matches 1 run data modify entity @s text.extra[0].bold set value false

#   If player is currently selected this coop profile id
scoreboard players set #temp Temp 0
execute as @a if score @s profile.player.coop_profile_id = #compare profile.player.coop_profile_id if score @s career.player_id = #compare hub.entity.player_id \
run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 1 run data modify entity @s text.extra[0].color set value "#5B3523"
execute if score #temp Temp matches 1 run data modify entity @s text.extra[0].italic set value false
execute if score #temp Temp matches 1 run data modify entity @s text.extra[0].bold set value true