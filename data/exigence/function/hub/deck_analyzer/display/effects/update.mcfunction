# Update display entities

## CONSTRAINTS
#   AT core background

## INPUT
#   DATA deck_analysis

#=============================================================================================================

execute if score e.beastsenseSeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_a {index:0,effect:"beastsense"}
execute if score e.invisibilitySeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_a {index:1,effect:"invisibility"}
execute if score e.regenSeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_a {index:2,effect:"regen"}

execute if score e.glimmerSeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_a {index:4,effect:"glimmer"}
execute if score e.circulationSeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_a {index:5,effect:"circulation"}

execute if score e.detectionSeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_a {index:7,effect:"detection"}

execute if score e.flickerSeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_a {index:9,effect:"flicker"}

execute if score e.jumpSeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_a {index:11,effect:"jump"}
execute if score e.speedSeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_a {index:12,effect:"speed"}
execute if score e.speed2Seconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_a {index:13,effect:"speed2"}

execute unless score e.beastsenseSeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_0 {index:0,effect:"beastsense"}
execute unless score e.invisibilitySeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_0 {index:1,effect:"invisibility"}
execute unless score e.regenSeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_0 {index:2,effect:"regen"}

execute unless score e.glimmerSeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_0 {index:4,effect:"glimmer"}
execute unless score e.circulationSeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_0 {index:5,effect:"circulation"}

execute unless score e.detectionSeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_0 {index:7,effect:"detection"}

execute unless score e.flickerSeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_0 {index:9,effect:"flicker"}

execute unless score e.jumpSeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_0 {index:11,effect:"jump"}
execute unless score e.speedSeconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_0 {index:12,effect:"speed"}
execute unless score e.speed2Seconds deck.analysis matches 1.. run function exigence:hub/deck_analyzer/display/effects/private/update_0 {index:13,effect:"speed2"}
