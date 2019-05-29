-- Code for repeatedly increasing and decreasing windows Volume
-- Make sure that "Volume Up" and "Volume Down" macros exist in LGS
-- They don't need to be bound to any key. just there.
-- Unbind the forward and back buttons on the mouse,
-- Both actions are performed on pressing the keys.

local rDelay = 100 -- repeat delay in miliseconds, lower = faster
local fwdBtn = 5 -- Volume Up
local bakBtn = 4 -- Volume Down
function OnEvent(event, arg)
	--OutputLogMessage("event = %s, arg = %s\n", event, arg);
	if (event == "MOUSE_BUTTON_PRESSED" and arg == fwdBtn ) then
		while IsMouseButtonPressed(fwdBtn) do
			PlayMacro("Volume Up")
			Sleep(rDelay)
			AbortMacro()
		end
	end
	if (event == "MOUSE_BUTTON_PRESSED" and arg == bakBtn ) then
		while IsMouseButtonPressed(bakBtn) do
			PlayMacro("Volume Down")
			Sleep(rDelay)
			AbortMacro()
		end
	end
end
