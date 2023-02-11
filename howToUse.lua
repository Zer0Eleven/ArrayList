                                          --[[ How to use]]--
--[[

1. Loading the array

  First, add a variable and name it whatever you'd like. I recommend naming it "array".
  After you add the variable, You need to define it. After you define it, your code should be like this:

  local array = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zer0Eleven/ArrayList/main/main.lua"))()

  
2. Functions
  
  There are 8 functions, array.Add, array.Remove, array.Color, and array.Font, array.TextSize, array.TextTransparency, array.TextStrokeTransparency, and array.TextStrokeColor.
  
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  First, use array.Add to add an item!
  
  Example: array.Add("Speed", "CFrame")

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Second, use array.Remove to remove an item! (Make sure that you've used array.Add to add the item you want to remove)

  Example: array.Remove("Speed")
  
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  Third, use array.Color to set the color of the array text to whatever you want (RGB), You can also use array.Color to make your own rainbow array!

  Example: array.Color(255, 255, 255)
  
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Fourth, use array.Font to set the font of the array text! (Make sure its a font supported by Roblox)

  Example: array.Font(Enum.Font.Ubuntu)

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  Fith, use array.TextSize to set the size of the array text!

  Example: array.TextSize(25)

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Sixth, use array.TextTransparency to set the transparency of the array text!

  Example: array.TextTransparency(0.7)

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Seventh, use array.TextStrokeTransparency to set the transparency of the array text stroke! (Text outline)

  Example: array.TextStrokeTransparency(1)

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  Eighth, use array.TextStrokeColor to set the color of the array text stroke! (Text outline) (RGB)

  Example: array.TextStrokeColor(255, 255, 255)

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

3. How to disabled

  Its simple, just use this code!

  shared["MoonArray"].Enabled = false
  
]]--

--[[ Credits to whoever made the original library that I edited on ]]--




