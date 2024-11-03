if not ModSettingGet("noita.fairmod.reset_progress") then return end

dofile_once("mods/noita.fairmod/files/content/achievements/achievements.lua")

for i = 1, #achievements do
	local achievement = achievements[i]
	local flag = "fairmod_" .. achievement.flag or ("achievement_" .. achievement.name)
	RemoveFlagPersistent(flag)
end

RemoveFlagPersistent("fairmod_dmca_warning_shown")
RemoveFlagPersistent("fairmod_spawned_superchest")
RemoveFlagPersistent("fairmod_noitillionare_winner")
ModSettingRemove("fairmod_win_count")
ModSettingRemove("fairmod.death_locations")
ModSettingRemove("radios_activated_highscore")
ModSettingRemove("noita.fairmod.reset_progress")
