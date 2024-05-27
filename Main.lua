local MarketPlaceService = game:GetService("MarketplaceService")

local id = game.PlaceId

local Ids = {
    ["❓ LUCKY BLOCKS Battlegrounds"] = 662417684,
    ["Arsenal"] = 286090429
}

function GameIsSupported()
    warn("Game is supported("..MarketPlaceService:GetProductInfo(game.PlaceId).Name"). Loading script")
end

function GameIsNotSupported()
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Place is not supported",
        Text = "Place is not supported. Loading Universal script",
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Farls-Xavier/UniversalScript/main/Main.lua"))()
end

local FoundID = false
for _,v in pairs(Ids) do
    if v == id then
        FoundID = true
    end
end

for _,v in pairs(Ids) do
    if FoundID == false then
        GameIsNotSupported()
    else
        if id == Ids["❓ LUCKY BLOCKS Battlegrounds"] then
            GameIsSupported()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Farls-Xavier/LuckyBlocks/main/Main.lua"))()
        elseif id == Ids.Arsenal then
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Not done yet!",
                Text = "Arsenal isnt quite yet supported loading universal script",
            })
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Farls-Xavier/UniversalScript/main/Main.lua"))()
            --[[GameIsSupported()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Farls-Xavier/Arsenal/main/Main.lua"))()]]
        end
    end
end
