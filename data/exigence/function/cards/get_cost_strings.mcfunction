# Assumes get_cost has been run before this

# Create cost displays ✔
execute if score GreenCost Resources matches 0 run data modify storage exigence:resources green_cost_string set value {text:"",italic:false,bold:true,color:"dark_green"}
execute if score GreenCost Resources matches 1 run data modify storage exigence:resources green_cost_string set value {text:"✔",italic:false,bold:true,color:"dark_green"}
execute if score GreenCost Resources matches 2 run data modify storage exigence:resources green_cost_string set value {text:"✔✔",italic:false,bold:true,color:"dark_green"}
execute if score GreenCost Resources matches 3.. run data modify storage exigence:resources green_cost_string set value {text:"✔✔✔",italic:false,bold:true,color:"dark_green"}
execute if score GreenCost Resources matches ..2 run data modify storage exigence:resources green_cost_string2 set value {text:"",italic:false,bold:true,color:"dark_green"}
execute if score GreenCost Resources matches 4 run data modify storage exigence:resources green_cost_string2 set value {text:"✔",italic:false,bold:true,color:"dark_green"}
execute if score GreenCost Resources matches 5 run data modify storage exigence:resources green_cost_string2 set value {text:"✔✔",italic:false,bold:true,color:"dark_green"}
execute if score GreenCost Resources matches 6 run data modify storage exigence:resources green_cost_string2 set value {text:"✔✔✔",italic:false,bold:true,color:"dark_green"}

execute if score RedCost Resources matches 0 run data modify storage exigence:resources red_cost_string set value {text:"",italic:false,bold:true,color:"dark_red"}
execute if score RedCost Resources matches 1 run data modify storage exigence:resources red_cost_string set value {text:"✔",italic:false,bold:true,color:"dark_red"}
execute if score RedCost Resources matches 2 run data modify storage exigence:resources red_cost_string set value {text:"✔✔",italic:false,bold:true,color:"dark_red"}
execute if score RedCost Resources matches 3.. run data modify storage exigence:resources red_cost_string set value {text:"✔✔✔",italic:false,bold:true,color:"dark_red"}
execute if score RedCost Resources matches ..2 run data modify storage exigence:resources red_cost_string2 set value {text:"",italic:false,bold:true,color:"dark_red"}
execute if score RedCost Resources matches 4 run data modify storage exigence:resources red_cost_string2 set value {text:"✔",italic:false,bold:true,color:"dark_red"}
execute if score RedCost Resources matches 5 run data modify storage exigence:resources red_cost_string2 set value {text:"✔✔",italic:false,bold:true,color:"dark_red"}
execute if score RedCost Resources matches 6 run data modify storage exigence:resources red_cost_string2 set value {text:"✔✔✔",italic:false,bold:true,color:"dark_red"}

execute if score AquaCost Resources matches 0 run data modify storage exigence:resources aqua_cost_string set value {text:"",italic:false,bold:true,color:"aqua"}
execute if score AquaCost Resources matches 1 run data modify storage exigence:resources aqua_cost_string set value {text:"✔",italic:false,bold:true,color:"aqua"}
execute if score AquaCost Resources matches 2 run data modify storage exigence:resources aqua_cost_string set value {text:"✔✔",italic:false,bold:true,color:"aqua"}
execute if score AquaCost Resources matches 3.. run data modify storage exigence:resources aqua_cost_string set value {text:"✔✔✔",italic:false,bold:true,color:"aqua"}
execute if score AquaCost Resources matches ..2 run data modify storage exigence:resources aqua_cost_string2 set value {text:"",italic:false,bold:true,color:"aqua"}
execute if score AquaCost Resources matches 4 run data modify storage exigence:resources aqua_cost_string2 set value {text:"✔",italic:false,bold:true,color:"aqua"}
execute if score AquaCost Resources matches 5 run data modify storage exigence:resources aqua_cost_string2 set value {text:"✔✔",italic:false,bold:true,color:"aqua"}
execute if score AquaCost Resources matches 6 run data modify storage exigence:resources aqua_cost_string2 set value {text:"✔✔✔",italic:false,bold:true,color:"aqua"}

# Get full cost for lore
data modify storage exigence:resources target set value 'full_cost'
data modify storage exigence:resources rpad set value {text:""}
function exigence:cards/set_full_cost_string with storage exigence:resources

# Get full cost for name (when spellbound)
data modify storage exigence:resources target set value 'full_cost_2'
data modify storage exigence:resources rpad set value {text:" "}
function exigence:cards/set_full_cost_string with storage exigence:resources
