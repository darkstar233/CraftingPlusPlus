scoreboard players remove @s cppStoredxp 4
function cpp:all_in_one_machine/recipes/hh/random
execute store result block ~ ~ ~ Items[{Slot:21b,id:"minecraft:gold_ingot"}].Count byte 0.005556 run scoreboard players operation #rand cppValue += #smelt_gold_redstone cppValue
function cpp:all_in_one_machine/recipes/hh/random
execute store result block ~ ~ ~ Items[{Slot:22b,id:"minecraft:redstone"}].Count byte 0.025 run scoreboard players operation #rand cppValue += #smelt_redstone_gold cppValue