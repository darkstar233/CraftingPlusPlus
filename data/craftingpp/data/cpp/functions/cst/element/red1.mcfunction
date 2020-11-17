advancement grant @s only cpp:elements
fill ~ 255 ~ ~1 255 ~ red_shulker_box
loot insert ~ 255 ~ mine ~ ~ ~ shears{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
loot insert ~1 255 ~ mine ~ 255 ~ shears{drop_content:1b}
execute if block ~ ~ ~ carrots run function cpp:cst/element/red_carrots
execute store result score #t cppValue run data modify block ~ 255 ~ Items set from block ~1 255 ~
execute unless score #t cppValue matches 0 run function cpp:cst/element/red3
fill ~ 255 ~ ~1 255 ~ air

execute if block ~ ~ ~ #cpp:red_force_smeltable2[half=lower] run function cpp:cst/element/red3
execute if block ~ ~ ~ #cpp:red_force_smeltable2[half=upper] positioned ~ ~-1 ~ run function cpp:cst/element/red3

execute if block ~ ~ ~ acacia_sapling align xyz positioned ~0.5 ~ ~0.5 as @e[type=armor_stand,tag=cpp_crops,distance=..0.5] run function cpp:cst/element/red_force_flower
