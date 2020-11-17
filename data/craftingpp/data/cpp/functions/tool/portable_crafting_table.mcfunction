function cpp:locate/air
execute at @e[type=area_effect_cloud,distance=..6,tag=cpp_front_air,limit=1] align xyz positioned ~0.5 ~ ~0.5 run function cpp:tool/portable_crafting_table_put
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block]
