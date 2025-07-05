# Reset advancement
advancement revoke @s only exigence:listener/sonic_boom

# Give hunger/slowness
#   If they already had these effects, increase them
effect give @s[nbt={active_effects:[{id:"minecraft:hunger"}]}] minecraft:hunger 20 1
effect give @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] minecraft:slowness 20 1

effect give @s[nbt=!{active_effects:[{id:"minecraft:hunger"}]}] minecraft:hunger 15 0
effect give @s[nbt=!{active_effects:[{id:"minecraft:slowness"}]}] minecraft:slowness 15 0
