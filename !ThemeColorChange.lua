local reference = gui.Reference("MISC", "GENERAL", "Bypass");
local checkbox = gui.Checkbox(reference, "theme_change", "Theme Color Change", false);
gui.Text(reference, "");
gui.Text(reference, "First of all save your config");
gui.Text(reference, "Function changes all esp and chams colors");
gui.Text(reference, "Except esp_health and esp_armor");
gui.Text(reference, "");
gui.Text(reference, "Instruction:");
gui.Text(reference, "1. Change misc_hitmarker color to what color you");
gui.Text(reference, "Need for all colors");
gui.Text(reference, "2. Enable checkbox and disable it");
gui.Text(reference, "after few seconds");

function gcolorchange()
	local r, g, b, a = gui.GetValue("clr_misc_hitmarker");
	if gui.GetValue("theme_change") == true then
		--- chams
		gui.SetValue("clr_chams_ct_vis", r,g,b,a);
		gui.SetValue("clr_chams_ct_invis", r,g,b,a);
		gui.SetValue("clr_chams_ghost_client", r,g,b,a);
		gui.SetValue("clr_chams_ghost_server", r,g,b,a);
		gui.SetValue("clr_chams_hands_primary", r,g,b,a);
		gui.SetValue("clr_chams_hands_secondary", r,g,b,a);
		gui.SetValue("clr_chams_historyticks", r,g,b,a);
		gui.SetValue("clr_chams_other_vis", r,g,b,a);
		gui.SetValue("clr_chams_other_invis", r,g,b,a);
		gui.SetValue("clr_chams_t_invis", r,g,b,a);
		gui.SetValue("clr_chams_t_vis", r,g,b,a);
		gui.SetValue("clr_chams_weapon_primary", r,g,b,a);
		gui.SetValue("clr_chams_weapon_secondary", r,g,b,a);
		--- esp
		gui.SetValue("clr_esp_bar_ammo1", r,g,b,a);
		gui.SetValue("clr_esp_bar_ammo2", r,g,b,a);
		gui.SetValue("clr_esp_box_ct_invis", r,g,b,a);
		gui.SetValue("clr_esp_box_ct_vis", r,g,b,a);
		gui.SetValue("clr_esp_box_other_invis", r,g,b,a);
		gui.SetValue("clr_esp_box_other_vis", r,g,b,a);
		gui.SetValue("clr_esp_box_t_invis", r,g,b,a);
		gui.SetValue("clr_esp_box_t_vis", r,g,b,a);
		gui.SetValue("clr_esp_crosshair", r,g,b,a);
		gui.SetValue("clr_esp_crosshair_recoil", r,g,b,a);
		gui.SetValue("clr_esp_outofview", r,g,b,a);
		gui.SetValue("clr_esp_skeleton", r,g,b,a);
	end
end
callbacks.Register("Draw", "themechange", gcolorchange);