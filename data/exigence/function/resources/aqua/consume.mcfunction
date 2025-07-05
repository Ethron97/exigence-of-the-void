# Consume.mcfunction should only be called from try_consume, which validates it

# Reduce resource
scoreboard players operation Aqua Resources -= AquaCost Resources

# Display consume in subtitle
execute if score AquaCost Resources matches 1 run data modify storage exigence:resource_hud aqua_consume set value [{text:"✔",color:"aqua",bold:true}]
execute if score AquaCost Resources matches 2 run data modify storage exigence:resource_hud aqua_consume set value [{text:"✔✔",color:"aqua",bold:true}]
execute if score AquaCost Resources matches 3 run data modify storage exigence:resource_hud aqua_consume set value [{text:"✔✔✔",color:"aqua",bold:true}]
execute if score AquaCost Resources matches 4 run data modify storage exigence:resource_hud aqua_consume set value [{text:"✔✔✔✔",color:"aqua",bold:true}]
execute if score AquaCost Resources matches 5 run data modify storage exigence:resource_hud aqua_consume set value [{text:"✔✔✔✔✔",color:"aqua",bold:true}]
execute if score AquaCost Resources matches 6 run data modify storage exigence:resource_hud aqua_consume set value [{text:"✔✔✔✔✔✔",color:"aqua",bold:true}]

# Update scores
scoreboard players operation @a[tag=ActivePlayer] t_consumedAqua += AquaCost Resources
scoreboard players operation @a[tag=ActivePlayer] cr_consumedAqua += AquaCost Resources
