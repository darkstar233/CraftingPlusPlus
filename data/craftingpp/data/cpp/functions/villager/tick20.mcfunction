execute as @s[tag=!cpp_villager_modified,predicate=cpp:villager/butcher] run function cpp:villager/rabbit_stew
execute as @s[tag=!cpp_villager_modified,predicate=cpp:villager/farmer] run function cpp:villager/apple
tag @s[tag=cpp_villager_modified,predicate=cpp:villager/none] remove cpp_villager_modified
