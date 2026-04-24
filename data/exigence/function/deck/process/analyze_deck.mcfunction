# Analyze deck
#   ALL /try_analyze functions are now controlled by a python script

## CONTRAINTS
#   AS/AT profile node

#====================================================================================================
execute unless entity @n[type=minecraft:marker,tag=ProfileNode,distance=..0.01] run return run tellraw @a {text:"Analyze deck was not run on a profile node",color:"red"}
#====================================================================================================

#say (D3) Analyze deck (new)

# Reset
data modify storage exigence:hub too_many_copies set value false
function exigence:deck/process/reset_analyze_scores
data modify storage exigence:deck_analysis errors set value []
data modify storage exigence:deck_analysis warnings set value []
scoreboard players set errors deck.analysis 0
scoreboard players set warnings deck.analysis 0

#====================================================================================================
# PRIORITY
#====================================================================================================
# Check if any players in the room where this is being analyzed have items that impact deck analysis
#   Quartz Core (increase resource max)
execute as @a if score @s hub.player.room_id = #relay_to_room_id Temp \
if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'quartz_core'}}}]}] run function exigence:vault/artifact/artifacts/quartz_core/trigger

#   Helmet Deck (void items)
execute as @a if score @s hub.player.room_id = #relay_to_room_id Temp \
if predicate exigence:equipment/helmet/deck run scoreboard players add cards.void_discount deck.analysis 3

# Process resource max modifiers first so we can detect if cards are un-playable
function exigence:cards/roots_of_vitality/analyze/try_analyze
function exigence:cards/heart_of_ferocity/analyze/try_analyze
function exigence:cards/mind_of_divinity/analyze/try_analyze

#====================================================================================================
# COMMON
#====================================================================================================

# Common Void
function exigence:cards/endurance/analyze/try_analyze
function exigence:cards/fallow_coffers/analyze/try_analyze
function exigence:cards/delve/analyze/try_analyze
function exigence:cards/scout/analyze/try_analyze

# Common
function exigence:cards/cantrip/analyze/try_analyze
function exigence:cards/courage/analyze/try_analyze
function exigence:cards/treasure_hunter/analyze/try_analyze
function exigence:cards/ember_seeker/analyze/try_analyze
function exigence:cards/green_thumb/analyze/try_analyze
function exigence:cards/beast_sense/analyze/try_analyze
function exigence:cards/herbalism/analyze/try_analyze
#function exigence:cards/risky_reward/analyze/try_analyze
function exigence:cards/recovery/analyze/try_analyze
function exigence:cards/stride/analyze/try_analyze
function exigence:cards/dash/analyze/try_analyze
function exigence:cards/glimmer/analyze/try_analyze
function exigence:cards/detection/analyze/try_analyze

# Common Instant
function exigence:cards/canyon_runner/analyze/try_analyze
function exigence:cards/spike_growth/analyze/try_analyze
function exigence:cards/key_hunter_i/analyze/try_analyze
function exigence:cards/forgotten_belonging/analyze/try_analyze

#====================================================================================================
# UNCOMMON
#====================================================================================================

# Uncommon Void
function exigence:cards/dissonance/analyze/try_analyze
function exigence:cards/remembrance/analyze/try_analyze
function exigence:cards/cart_cache/analyze/try_analyze
function exigence:cards/tasty_surprise/analyze/try_analyze

# Uncommon
function exigence:cards/ascending_strides/analyze/try_analyze
function exigence:cards/trust_fund/analyze/try_analyze
function exigence:cards/bounding_strides/analyze/try_analyze
function exigence:cards/blessed_harvest/analyze/try_analyze
function exigence:cards/overgrowth/analyze/try_analyze
function exigence:cards/second_wind/analyze/try_analyze
function exigence:cards/quick_leap/analyze/try_analyze
function exigence:cards/fervor/analyze/try_analyze
function exigence:cards/loot_and_fruit/analyze/try_analyze
function exigence:cards/loot_and_scoot/analyze/try_analyze
function exigence:cards/glow_and_go/analyze/try_analyze
function exigence:cards/arrogance/analyze/try_analyze
function exigence:cards/detect_thoughts/analyze/try_analyze
function exigence:cards/camouflage/analyze/try_analyze
function exigence:cards/berry_breath/analyze/try_analyze
function exigence:cards/salvage/analyze/try_analyze
function exigence:cards/commune_with_nature/analyze/try_analyze
function exigence:cards/spell_scroll/analyze/try_analyze
function exigence:cards/heighten/analyze/try_analyze

# Uncommon Instant
function exigence:cards/eyes_on_the_prize/analyze/try_analyze
function exigence:cards/forgotten_experiment/analyze/try_analyze
function exigence:cards/key_hunter_ii/analyze/try_analyze
function exigence:cards/reflection/analyze/try_analyze

#====================================================================================================
# RARE
#====================================================================================================

# Rare Void
function exigence:cards/patience/analyze/try_analyze
function exigence:cards/dissonance_ii/analyze/try_analyze
function exigence:cards/prescience/analyze/try_analyze
function exigence:cards/forbidden_knowledge/analyze/try_analyze

# Rare
function exigence:cards/crop_rotation/analyze/try_analyze
function exigence:cards/situational_awareness/analyze/try_analyze
function exigence:cards/transcend/analyze/try_analyze
function exigence:cards/glory/analyze/try_analyze
function exigence:cards/opulence/analyze/try_analyze
function exigence:cards/guidance/analyze/try_analyze
function exigence:cards/vindication/analyze/try_analyze
function exigence:cards/cash_crop/analyze/try_analyze
function exigence:cards/circulation/analyze/try_analyze
function exigence:cards/veil/analyze/try_analyze
function exigence:cards/revivify/analyze/try_analyze
function exigence:cards/compost/analyze/try_analyze
function exigence:cards/spellfire/analyze/try_analyze
function exigence:cards/lightweave/analyze/try_analyze
function exigence:cards/prosperity/analyze/try_analyze
function exigence:cards/amplify/analyze/try_analyze
function exigence:cards/fanatic/analyze/try_analyze
function exigence:cards/bloodsense/analyze/try_analyze
function exigence:cards/proclaim/analyze/try_analyze
function exigence:cards/accelerate/analyze/try_analyze
function exigence:cards/metabolism/analyze/try_analyze

# Rare Instant
function exigence:cards/elation/analyze/try_analyze
function exigence:cards/key_hunter_iii/analyze/try_analyze
function exigence:cards/joy/analyze/try_analyze
function exigence:cards/forgotten_offering/analyze/try_analyze
function exigence:cards/heretic/analyze/try_analyze

#====================================================================================================
# LEGENDARY
#====================================================================================================

# Legendary Void
function exigence:cards/chrysopoeia/analyze/try_analyze
function exigence:cards/dissonance_iii/analyze/try_analyze
function exigence:cards/led_by_ancient_light/analyze/try_analyze
function exigence:cards/void_cache/analyze/try_analyze
function exigence:cards/prophecy/analyze/try_analyze

# Legendary
function exigence:cards/ambrosia/analyze/try_analyze
function exigence:cards/concordance/analyze/try_analyze
function exigence:cards/final_harvest/analyze/try_analyze
function exigence:cards/helpful_spirits/analyze/try_analyze
function exigence:cards/moonwalker/analyze/try_analyze
function exigence:cards/rejuvination/analyze/try_analyze
function exigence:cards/resonance/analyze/try_analyze
function exigence:cards/respite/analyze/try_analyze
function exigence:cards/seasons/analyze/try_analyze
function exigence:cards/second_chances/analyze/try_analyze
function exigence:cards/spell_soul/analyze/try_analyze
function exigence:cards/sunwalker/analyze/try_analyze
function exigence:cards/signature_spells/analyze/try_analyze
function exigence:cards/lightdrawn_spirits/analyze/try_analyze
function exigence:cards/skyslayer/analyze/try_analyze
function exigence:cards/shape_change/analyze/try_analyze
function exigence:cards/far_step/analyze/try_analyze
function exigence:cards/wish/analyze/try_analyze
function exigence:cards/synaptic_shock/analyze/try_analyze
function exigence:cards/entangle/analyze/try_analyze
function exigence:cards/truesight/analyze/try_analyze
function exigence:cards/kinesis/analyze/try_analyze

# Legendary Instant
function exigence:cards/backup_plan/analyze/try_analyze
function exigence:cards/claustrophobia/analyze/try_analyze
function exigence:cards/exigence/analyze/try_analyze
function exigence:cards/key_master/analyze/try_analyze
function exigence:cards/oblivion/analyze/try_analyze
function exigence:cards/tranquility/analyze/try_analyze
function exigence:cards/final_ascension/analyze/try_analyze
function exigence:cards/voidscent/analyze/try_analyze
function exigence:cards/spellbook/analyze/try_analyze
function exigence:cards/conviction/analyze/try_analyze
function exigence:cards/void_clone/analyze/try_analyze
function exigence:cards/inner_fire/analyze/try_analyze

#====================================================================================================
# Copy information from scores to data
function exigence:deck/process/private/update_analysis_storage
