

local font = Enum.Font.SciFi
local array = Instance.new("ScreenGui", game:GetService("CoreGui"))
local arrayFrame = Instance.new("Frame", array)
arrayFrame.Size = UDim2.new(0.13, 0, 1, 0)
arrayFrame.Position = UDim2.new(0.87, 0, 0, 0)
arrayFrame.BackgroundTransparency = 1
local Grid = Instance.new("UIGridLayout",arrayFrame)
Grid.CellPadding = UDim2.new(0, 0, 0.0001, 0)
Grid.SortOrder = Enum.SortOrder.LayoutOrder
Grid.CellSize = UDim2.new(1, 0, 0.0275, 0)
Grid.HorizontalAlignment = "Left"

task.spawn(function()
    while task.wait(1) do
        array.Enabled = true
     end
end)

Arraylist = {
    Rainbow = function()
	task.spawn(function()
	local Text = arrayFrame:GetChildren()
	local goingDown = false
	local add = 1
	local k = 0
	
	if goingDown == false then
	   while k <= 255 do
	      Text.TextColor3 = Color3.fromRGB(k, k, k)
	
	      k = k + add
				
	      if k = 255 then
		 goingDown = true
	      end
				
	      task.wait()
	   end
	else
	   while k <= 255 then
	      Text.TextColor3 = Color3.fromRGB(k, k, k)
	
	      k + k - add
	      if k = 0 then
		   goingDown = false
	      end
			
	      task.wait()
	   end
	end
	end)
    end,
    Add = function(Name, Suffix)
        local Text = Instance.new("TextLabel",arrayFrame)
        local newName
        if Suffix then
			newName = Name.." ["..Suffix .."]"
        else
            newName = Name
        end
        Text.Name = Name
        Text.BackgroundTransparency = 1
        Text.Size = UDim2.new(0,0,1,0)
        Text.Font = font
        local TextScale = Text.AbsoluteSize.Y * 0.7
        Text.TextSize = TextScale
        Text.Text = newName.." "
        local size = game:GetService("TextService"):GetTextSize(newName, TextScale, font, Vector2.new(1000000, 1000000))
        Text.TextXAlignment = "Right"
        Text.LayoutOrder = -size.X
	    Text.TextColor3 = Color3.fromRGB(59, 170, 222)
	    Text.TextStrokeTransparency = 0
        task.spawn(function()
            repeat
                task.wait()
                Text.TextColor3 = array.Rainbow()
            until not Text
        end)
    end,
    Remove = function(Name)
        if arrayFrame:FindFirstChild(Name) then
            arrayFrame:FindFirstChild(Name):Destroy()
        end
    end,
    Color = function(red, green, blue)
      local Text = arrayFrame:GetChildren()
      
      Text.TextColor3 = Color3.fromRGB(red, green, blue)
    end,
    Font = function(EnumFont)
      font = EnumFont
      local Text = arrayFrame:GetChildren()

      
      if font then
          Text.Font = font
	        print("Font has been found (Font: "..EnumFont")")
      else
        print("Font not found, make sure it is a font supported by Roblox. (Attempted Font: "..EnumFont")")
      end
    end,
}


return Arraylist
