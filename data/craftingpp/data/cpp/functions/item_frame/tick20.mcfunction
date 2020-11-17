execute as @s[predicate=cpp:item/magnet] run function cpp:item_frame/magnet/tick
execute as @s[predicate=cpp:item/time_checker] run function cpp:item_frame/time_checker/tick
execute as @s[predicate=cpp:item/muffler] as @e[distance=..5] run data merge entity @s {Silent:1b}