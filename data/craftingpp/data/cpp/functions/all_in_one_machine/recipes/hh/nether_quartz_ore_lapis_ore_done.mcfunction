scoreboard players remove @s cppStoredxp 4
function cpp:all_in_one_machine/recipes/hh/random
execute store result block ~ ~ ~ Items[{Slot:21b,id:"minecraft:quartz"}].Count byte 0.005556 run scoreboard players operation #rand cppValue += #smelt_nether_quartz_lapis cppValue
function cpp:all_in_one_machine/recipes/hh/random
execute store result block ~ ~ ~ Items[{Slot:22b,id:"minecraft:lapis_lazuli"}].Count byte 0.03333 run scoreboard players operation #rand cppValue += #smelt_lapis_nether_quartz cppValue