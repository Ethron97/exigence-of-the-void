# Called from game_reset to reset player scores/tags/team etc

## CONSTRAINTS
#   AS player

#========================================================================================================

## EFFECTS
effect clear @s


# Return to adventure
gamemode adventure @s


## TAGS
tag @a[tag=Exalting] remove Exalting
tag @s remove ActivePlayer
tag @s remove PrimaryPlayer
tag @s remove Carrying
tag @s remove Trial
tag @s remove Crucible
tag @s remove HandleInteracting


## SCOREBOARD
scoreboard players set @s RoomToken 0


## ATTRIBUTES
attribute @s minecraft:safe_fall_distance modifier add exigence:safe_fall 100 add_value
attribute @s minecraft:step_height modifier remove exigence:step_height_qol
attribute @s minecraft:movement_efficiency modifier remove exigence:ashes
attribute @s minecraft:knockback_resistance modifier remove exigence:heavy_core
attribute @s minecraft:max_health modifier remove exigence:health_boost_1
attribute @s minecraft:max_health modifier remove exigence:health_boost_2
attribute @s minecraft:max_health modifier remove exigence:health_boost_3
attribute @s minecraft:max_health modifier remove exigence:health_boost_4
attribute @s minecraft:max_health modifier remove exigence:health_boost_5
attribute @s minecraft:max_health modifier remove exigence:health_boost_6
attribute @s minecraft:max_health modifier remove exigence:health_boost_7
attribute @s minecraft:max_health modifier remove exigence:health_boost_8
attribute @s minecraft:max_health modifier remove exigence:health_boost_9
attribute @s minecraft:max_health modifier remove exigence:health_boost_10
attribute @s minecraft:max_health modifier remove exigence:health_boost_11
attribute @s minecraft:max_health modifier remove exigence:health_boost_12
attribute @s minecraft:max_health modifier remove exigence:health_boost_13
attribute @s minecraft:max_health modifier remove exigence:health_boost_14
attribute @s minecraft:max_health modifier remove exigence:health_boost_15
attribute @s minecraft:max_health modifier remove exigence:health_boost_16
attribute @s minecraft:max_health modifier remove exigence:health_boost_17
attribute @s minecraft:max_health modifier remove exigence:health_boost_18
attribute @s minecraft:max_health modifier remove exigence:health_boost_19
attribute @s minecraft:max_health modifier remove exigence:health_boost_20
attribute @s minecraft:max_health modifier remove exigence:health_boost_21
attribute @s minecraft:max_health modifier remove exigence:health_boost_22
attribute @s minecraft:max_health modifier remove exigence:health_boost_23
attribute @s minecraft:max_health modifier remove exigence:health_boost_24
attribute @s minecraft:max_health modifier remove exigence:health_boost_25
attribute @s minecraft:max_health modifier remove exigence:health_boost_26
attribute @s minecraft:max_health modifier remove exigence:health_boost_27
attribute @s minecraft:max_health modifier remove exigence:health_boost_28
attribute @s minecraft:max_health modifier remove exigence:health_boost_29
attribute @s minecraft:max_health modifier remove exigence:health_boost_30
attribute @s minecraft:max_health modifier remove exigence:health_boost_31
attribute @s minecraft:max_health modifier remove exigence:health_boost_32
attribute @s minecraft:max_health modifier remove exigence:health_boost_33
attribute @s minecraft:max_health modifier remove exigence:health_boost_34
attribute @s minecraft:max_health modifier remove exigence:health_boost_35
attribute @s minecraft:max_health modifier remove exigence:health_boost_36
attribute @s minecraft:max_health modifier remove exigence:health_boost_37
attribute @s minecraft:max_health modifier remove exigence:health_boost_38
attribute @s minecraft:max_health modifier remove exigence:health_boost_39
attribute @s minecraft:max_health modifier remove exigence:health_boost_38
attribute @s minecraft:max_health modifier remove exigence:health_boost_40

