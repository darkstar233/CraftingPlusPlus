execute as @s[predicate=cpp:item/pickable] if entity @a[predicate=cpp:inventory/magnet,distance=..16] run function cpp:item/magnet
execute as @s[tag=!cpp_item_checked] run function cpp:item/check
execute as @s[predicate=cpp:item/named_blaze_rod] at @s run function cpp:item/wand_of_the_darkness
