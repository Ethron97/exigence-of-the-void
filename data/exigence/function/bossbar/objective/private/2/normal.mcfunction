
execute if score GotTempleOfFervorKey DungeonRun matches 0 run bossbar set exigence:objective name [{text:"Find the Temple of Fervor key",color:"yellow"}]

execute if score GotTempleOfFervorKey DungeonRun matches 1 run bossbar set exigence:objective name [{text:"Open the Temple of Fervor door",color:"yellow"}]

execute if score GotTempleOfFervorKey DungeonRun matches 1 if entity @e[type=armor_stand,tag=DoorNode,tag=TempleOfFervor,tag=Open] run \
bossbar set exigence:objective name [{text:"Ascend to the Temple of Fervor",color:"yellow"}]
