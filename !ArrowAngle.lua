local reference = gui.Reference("VISUALS", "Other", "Options");


local arrowR = gui.Slider(reference, "arrow_red", "Angle Arrow Red", 0, 0, 255);
local arrowG = gui.Slider(reference, "arrow_green", "Angle Arrow Green", 0, 0, 255);
local arrowB = gui.Slider(reference, "arrow_blue", "Angle Arrow Blue", 0, 0, 255);

function anglearrows()

local angle = {0, 0, 0}

local LocalPlayer = entities.GetLocalPlayer()

if LocalPlayer == nil then
	return
end

local angle = LocalPlayer:GetPropFloat("m_flLowerBodyYawTarget") - angle[2]
local font = draw.CreateFont("Verdana", 44);
draw.SetFont(font);

local w, h = draw.GetScreenSize()
local w = w/2
local h = h/2

if angle >= 0 then
	draw.Color(gui.GetValue("arrow_red"),gui.GetValue("arrow_green"),gui.GetValue("arrow_blue"),255);
	draw.Text(w-60,h-25, "⯇");
	draw.Color(0,0,0,155);
	draw.Text(w+38, h-25, "⯈");
elseif angle <= 0 then
	draw.Color(gui.GetValue("arrow_red"),gui.GetValue("arrow_green"),gui.GetValue("arrow_blue"),255); -- 193,253,0
	draw.Text(w+38,h-25, "⯈");
	draw.Color(0,0,0,155);
	draw.Text(w-60, h-25, "⯇");
end

end
callbacks.Register("Draw", "anglearrows", anglearrows)
