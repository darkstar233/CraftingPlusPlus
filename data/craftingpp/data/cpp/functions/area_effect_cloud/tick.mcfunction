# 营火
execute as @s[tag=cpp_campfires] run function cpp:campfires/tick
# 花世界传送门
execute as @s[tag=cpp_flower_portal] unless predicate cpp:flower_portal_done run function cpp:dim/flower_portal_broken

