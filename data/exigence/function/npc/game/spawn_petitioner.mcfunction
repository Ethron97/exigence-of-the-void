say (D3) Spawn petitioner

summon minecraft:villager -411.5 159.00 -56.5 {Offers:{Recipes:[]},Tags:["NPC_Petitioner","Game","NPC"],NoAI:true,CustomName:{text:"Petitioner",color:"light_purple",italic:false},VillagerData:{profession:"minecraft:cleric",type:"minecraft:taiga"},Invulnerable:1b,Attributes:[{Name:"generic.movement_speed", Base:0.001}]}

execute positioned -411.5 159.00 -56.5 run attribute @e[type=minecraft:villager,tag=NPC_Petitioner,distance=..1,limit=1] movement_speed base set 0.0

# add to enemy team so wardens dont kill em
execute positioned -411.5 159.00 -56.5 run team join Enemy @e[type=minecraft:villager,tag=NPC_Petitioner,distance=..1]