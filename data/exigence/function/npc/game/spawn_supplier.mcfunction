say (D3) spawn supplier

# Summon villager supplier in his lil bedroom
summon minecraft:villager -350.5 11.00 -231.5 {Offers:{Recipes:[]},Tags:["NPC_Supplier","Game","NPC"],NoAI:true,CustomName:{text:"Supplier",color:"light_purple",italic:false},VillagerData:{profession:"minecraft:weaponsmith",type:"minecraft:desert"},Invulnerable:1b}

#execute positioned -350.5 11.00 -231.5 run attribute @e[type=minecraft:villager,tag=NPC_Supplier,distance=..1,limit=1] movement_speed base set 0.0