-- author "Zaratusa"
-- contact "http://steamcommunity.com/profiles/76561198032479768"

LANG.AddToLanguage("english", "lucky_horseshoe_name", "Lucky Horseshoe")
LANG.AddToLanguage("english", "lucky_horseshoe_desc", "Reduces your fall damage by 90%\nbut you get a maximum of 35 damage.")

hook.Add("TTT2ScoreboardAddPlayerRow", "ZaratusasTTTMod", function(ply)
	local ID64 = ply:SteamID64()

	if (ID64 == "76561198032479768") then
		AddTTT2AddonDev(ID64)
	end
end)
