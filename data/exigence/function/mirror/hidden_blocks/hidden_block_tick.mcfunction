# Reveal block that the player is standing on
execute at @a[tag=ActivePlayer] positioned ~ ~-1 ~ as @e[distance=..1,type=minecraft:marker,tag=HiddenBlock,tag=ReflectionNO,tag=!Revealed,tag=!Appeared] at @s run function exigence:mirror/hidden_blocks/reveal_block


# Re-reveal any blocks within 16 blocks that are not revealed, but were previously discovered
execute at @a[tag=ActivePlayer] as @e[distance=..16,type=minecraft:marker,tag=HiddenBlock,tag=Discovered,tag=ReflectionNO,tag=!Revealed,tag=!Appeared] at @s run function exigence:mirror/hidden_blocks/reveal_block

# Un-reveal any blocks further than 16 blocks
#   Run every tick since it is more expensive
execute as @e[type=minecraft:marker,tag=HiddenBlock,tag=ReflectionNO,tag=Revealed] at @s unless entity @a[tag=ActivePlayer,distance=..16] run function exigence:mirror/hidden_blocks/hide_block


# Reveal block that the player REFLECTION is standing on
execute at @e[type=minecraft:armor_stand,tag=Reflection] positioned ~ ~-1 ~ as @e[distance=..1,type=minecraft:marker,tag=HiddenBlock,tag=ReflectionYES,tag=!Revealed,tag=!Appeared] at @s run function exigence:mirror/hidden_blocks/reveal_block
# Hide block that the player REFLECTION is no longer standing on
execute as @e[type=minecraft:marker,tag=HiddenBlock,tag=ReflectionYES,tag=Revealed] at @s unless entity @e[distance=..2,type=minecraft:armor_stand,tag=Reflection] run function exigence:mirror/hidden_blocks/hide_block
