# relies on info from deck_analysis function

# Reset signs
fill -263 17 -77 -259 17 -77 air
fill -263 19 -77 -259 19 -77 air
fill -263 17 -77 -259 17 -77 bamboo_wall_sign[facing=south]{front_text:{has_glowing_text:0b,color:"red",messages:["","","",""]}}

# Level 0
#execute if score CardsTotalCheck DeckAnalysis matches 2.. run data modify block -263 17 -77 front_text.messages[0] set value "Too many cards"

# Level 1
#   BUTTON
execute if score CardsTotalCheck DeckAnalysis matches ..1 run setblock -263 18 -77 polished_blackstone_button[facing=south]
execute if score CardsTotalCheck DeckAnalysis matches ..10 if entity @a[tag=Predungeon,advancements={exigence:story/win_difficulty_0=true}] run setblock -263 18 -77 polished_blackstone_button[facing=south]
#   TITLE SIGN
setblock -263 19 -77 bamboo_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"yellow",messages:["","","",""]}}
execute if entity @a[tag=Predungeon,advancements={exigence:story/win_difficulty_0=true}] run data modify block -263 19 -77 front_text.messages[0] set value "Level 1"
execute if entity @a[tag=Predungeon,advancements={exigence:story/win_difficulty_0=true}] run data modify block -263 19 -77 front_text.messages[1] set value "Ruins of Solstice"
execute if entity @a[tag=Predungeon,advancements={exigence:story/win_difficulty_0=true}] run data modify block -263 19 -77 front_text.messages[2] set value ""
execute if entity @a[tag=Predungeon,advancements={exigence:story/win_difficulty_0=true}] run data modify block -263 19 -77 front_text.messages[3] set value "Card Limit: 10"
#   LOCKED SIGN
execute if entity @a[tag=Predungeon,advancements={exigence:story/win_difficulty_0=false}] run data modify block -263 17 -77 front_text.messages[0] set value "Beat Difficulty 0"
execute if entity @a[tag=Predungeon,advancements={exigence:story/win_difficulty_0=false}] run data modify block -263 17 -77 front_text.messages[1] set value "to unlock"
# Unlocked, but incorrect cards
execute if score CardsTotalCheck DeckAnalysis matches 11.. if entity @a[tag=Predungeon,advancements={exigence:story/win_difficulty_0=true}] run data modify block -263 17 -77 front_text.messages[0] set value "Too many cards"

# Level 2
#   BUTTON
execute if score CardsTotalCheck DeckAnalysis matches ..20 if entity @a[tag=Predungeon,advancements={exigence:story/rescue_supplier=true}] run setblock -262 18 -77 polished_blackstone_button[facing=south]
#   TITLE SIGN
setblock -262 19 -77 bamboo_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"orange",messages:["","","",""]}}
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_supplier=true}] run data modify block -262 19 -77 front_text.messages[0] set value "Level 2"
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_supplier=true}] run data modify block -262 19 -77 front_text.messages[1] set value "Mirror Mines"
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_supplier=true}] run data modify block -262 19 -77 front_text.messages[2] set value ""
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_supplier=true}] run data modify block -262 19 -77 front_text.messages[3] set value "Card Limit: 20"
#   LOCKED SIGN
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_supplier=false,exigence:story/win_difficulty_0=true}] run data modify block -262 17 -77 front_text.messages[0] set value "Rescue the"
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_supplier=false,exigence:story/win_difficulty_0=true}] run data modify block -262 17 -77 front_text.messages[1] set value "supplier to"
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_supplier=false,exigence:story/win_difficulty_0=true}] run data modify block -262 17 -77 front_text.messages[2] set value "unlock"
# Unlocked, but incorrect cards
execute if score CardsTotalCheck DeckAnalysis matches 21.. if entity @a[tag=Predungeon,advancements={exigence:story/rescue_supplier=true}] run data modify block -262 17 -77 front_text.messages[0] set value "Too many cards"


# Level 3
#   BUTTON
execute if score CardsTotalCheck DeckAnalysis matches ..30 if entity @a[tag=Predungeon,advancements={exigence:story/rescue_scientist=true}] run setblock -261 18 -77 polished_blackstone_button[facing=south]
#   TITLE SIGN
setblock -261 19 -77 bamboo_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"red",messages:["","","",""]}}
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_scientist=true}] run data modify block -261 19 -77 front_text.messages[0] set value "Level 3"
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_scientist=true}] run data modify block -261 19 -77 front_text.messages[1] set value "Temple of Fervor"
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_scientist=true}] run data modify block -261 19 -77 front_text.messages[2] set value ""
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_scientist=true}] run data modify block -261 19 -77 front_text.messages[3] set value "Card Limit: 30"
#   LOCKED SIGN
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_scientist=false,exigence:story/rescue_supplier=true}] run data modify block -261 17 -77 front_text.messages[0] set value "Rescue the"
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_scientist=false,exigence:story/rescue_supplier=true}] run data modify block -261 17 -77 front_text.messages[1] set value "scientist to"
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_scientist=false,exigence:story/rescue_supplier=true}] run data modify block -261 17 -77 front_text.messages[2] set value "unlock"
# Unlocked, but incorrect cards
execute if score CardsTotalCheck DeckAnalysis matches 31.. if entity @a[tag=Predungeon,advancements={exigence:story/rescue_scientist=true}] run data modify block -261 17 -77 front_text.messages[0] set value "Too many cards"


# Level 4
#   BUTTON
execute if score CardsTotalCheck DeckAnalysis matches ..40 if entity @a[tag=Predungeon,advancements={exigence:story/rescue_petitioner=true}] run setblock -260 18 -77 polished_blackstone_button[facing=south]
#   TITLE SIGN
setblock -260 19 -77 bamboo_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"purple",messages:["","","",""]}}
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_petitioner=true}] run data modify block -260 19 -77 front_text.messages[0] set value "Level 4"
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_petitioner=true}] run data modify block -260 19 -77 front_text.messages[1] set value "Ardor's Bane"
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_petitioner=true}] run data modify block -260 19 -77 front_text.messages[2] set value ""
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_petitioner=true}] run data modify block -260 19 -77 front_text.messages[3] set value "Card Limit: 40"
#   LOCKED SIGN
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_petitioner=false,exigence:story/rescue_scientist=true}] run data modify block -260 17 -77 front_text.messages[0] set value "Rescue the"
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_petitioner=false,exigence:story/rescue_scientist=true}] run data modify block -260 17 -77 front_text.messages[1] set value "petitioner to"
execute if entity @a[tag=Predungeon,advancements={exigence:story/rescue_petitioner=false,exigence:story/rescue_scientist=true}] run data modify block -260 17 -77 front_text.messages[2] set value "unlock"
# Unlocked, but incorrect cards
execute if score CardsTotalCheck DeckAnalysis matches 41.. if entity @a[tag=Predungeon,advancements={exigence:story/rescue_petitioner=true}] run data modify block -260 17 -77 front_text.messages[0] set value "Too many cards"


# Level 5
#   BUTTON
execute if score CardsTotalCheck DeckAnalysis matches ..40 if entity @a[tag=Predungeon,advancements={exigence:story/destroy_crystals=true}] run setblock -259 18 -77 polished_blackstone_button[facing=south]
#   TITLE SIGN
setblock -259 19 -77 bamboo_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"cyan",messages:["","","",""]}}
execute if entity @a[tag=Predungeon,advancements={exigence:story/destroy_crystals=true}] run data modify block -259 19 -77 front_text.messages[0] set value "Level 5"
execute if entity @a[tag=Predungeon,advancements={exigence:story/destroy_crystals=true}] run data modify block -259 19 -77 front_text.messages[1] set value "Light the Beacons"
execute if entity @a[tag=Predungeon,advancements={exigence:story/destroy_crystals=true}] run data modify block -259 19 -77 front_text.messages[2] set value ""
execute if entity @a[tag=Predungeon,advancements={exigence:story/destroy_crystals=true}] run data modify block -259 19 -77 front_text.messages[3] set value "Card Limit: 40"
#   LOCKED SIGN
execute if entity @a[tag=Predungeon,advancements={exigence:story/destroy_crystals=false,exigence:story/rescue_petitioner=true}] run function exigence:hub/predungeon/private/update_wards_displays

# Unlocked, but incorrect cards
execute if score CardsTotalCheck DeckAnalysis matches 41.. if entity @a[tag=Predungeon,advancements={exigence:story/destroy_crystals=true}] run data modify block -259 17 -77 front_text.messages[0] set value "Too many cards"

