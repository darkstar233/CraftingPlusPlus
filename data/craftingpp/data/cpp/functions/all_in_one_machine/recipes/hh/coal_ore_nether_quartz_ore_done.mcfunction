scoreboard players remove @s cppStoredxp 4
function cpp:all_in_one_machine/recipes/hh/random
execute store result block ~ ~ ~ Items[{Slot:21b,id:"minecraft:coal"}].Count byte 0.005556 run scoreboard players operation #rand cppValue += #smelt_coal_nether_quartz cppValue
function cpp:all_in_one_machine/recipes/hh/random
execute store result block ~ ~ ~ Items[{Slot:22b,id:"minecraft:quartz"}].Count byte 0.005556 run scoreboard players operation #rand cppValue += #smelt_nether_quartz_coal cppValue