loot replace block ~ ~ ~ container.0 1 loot cpp:rituals/effect
execute if data entity @s Item.tag.cppStoredEffects run data remove entity @s Item.tag.display.Lore[0]
data modify entity @s Item.tag.display.Lore prepend from block ~ ~ ~ Items[0].tag.display.Lore[0]
data modify entity @s Item.tag.cppStoredEffects set from block ~ ~ ~ Items[0].tag.cppStoredEffects

tellraw @p {"translate":"info.cpp.rituals.finish"}
scoreboard players reset @s cppTick
scoreboard players reset @s cppWandLevel
data remove block ~ ~ ~ Items
tag @s remove cpp_rituals_item
