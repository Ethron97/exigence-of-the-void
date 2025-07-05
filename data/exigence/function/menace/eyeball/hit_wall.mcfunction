# Small backward adjustment to bring them out of the wall they hit
tp @s ^ ^0.1 ^-0.3 ~ ~

tag @s remove Traveling

tag @s add Staring

# Give eyeball head:
#execute as @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1158355027,48186177,-1341027897,1697107071],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTc4NWQ1MmIyMzlkYmVhNWI2MTk1YmFkMmI2MmM3YzE3MTE0N2MyODM1YjI5NDk0MWIyODY4YWUzNzM1Mjc5NiJ9fX0="}]}}}}]}
#execute as @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:sculk_shrieker",count:1}]}
execute as @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{idd:[I;-1158355027,48186177,-1341027897,1697107071],name:"", properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTc4NWQ1MmIyMzlkYmVhNWI2MTk1YmFkMmI2MmM3YzE3MTE0N2MyODM1YjI5NDk0MWIyODY4YWUzNzM1Mjc5NiJ9fX0="}]}}}]}