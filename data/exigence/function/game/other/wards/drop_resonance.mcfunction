# Drops one shard by selecting a random remaining crystal

# Do we weight based on how many Healths are remaining? Or would that just encourage hoarding crystals

#====================================================================================================

execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:interaction,tag=Crystal,sort=random,limit=1] run function exigence:game/other/wards/crystal/drop_resonance_type
