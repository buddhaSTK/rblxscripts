getgenv().addmoney = false;

function moneyAdder()
    spawn(function()
        while getgenv().addmoney do
            local args = {[1] = 120}
            game:GetService("ReplicatedStorage").Remotes.cashEventSecured:FireServer(unpack(args))
            wait()
        end
    end)
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Dev Inc") -- Creates the window

local b = w:CreateFolder("SMILES") -- Creates the folder(U will put here your buttons,etc)

b:Toggle("Add Money",function(bool)
    getgenv().addmoney = bool
    if bool then
        moneyAdder();
    end
end)
