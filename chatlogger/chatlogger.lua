-- only works with synapse x, since it uses the synapse api --
if not getgenv().executed then
   spawn(function()
       for i,e621 in pairs(game.Players:GetChildren()) do
           e621.Chatted:Connect(function(furaffinity)
               if furaffinity:sub(1,2):lower() == "/w" then
                   rconsoleprint("@@CYAN@@")
                   rconsoleprint(tostring("Private Message " ..e621.name ..": ") ..furaffinity .."\n")
               elseif furaffinity:sub(1,2):lower() == "/e" then
                   rconsoleprint("@@BROWN@@")
                   rconsoleprint(tostring("Emote " ..e621.name ..": ") ..furaffinity .."\n")
               else
                   rconsoleprint("@@WHITE@@")
                   rconsoleprint(tostring(e621.Name ..": ") ..furaffinity .."\n")
               end
           end)
       end
       game.Players.PlayerAdded:Connect(function(transfurmationyiff)
           p = transfurmationyiff
           rconsoleprint("@@PINK@@")
           rconsoleprint(tostring(tostring(p.Name) .." Joined!, Userid: " ..tostring(p.UserId) ..", Name: "..tostring(p.Name) ..", Device: " ..tostring(p.OsPlatform) ..", AccountAge: " ..tostring(p.AccountAge) .."\n"))
           transfurmationyiff.Chatted:Connect(function(salembad)
               if salembad:sub(1,2):lower() == "/w" then
                   rconsoleprint("@@CYAN@@")
                   rconsoleprint(tostring("Private Message " ..transfurmationyiff.name ..": ") ..salembad .."\n")
               elseif salembad:sub(1,2):lower() == "/e" then
                   rconsoleprint("@@RED@@")
                   rconsoleprint(tostring("Emote " ..transfurmationyiff.name ..": ") ..salembad .."\n")
               else
                   rconsoleprint("@@WHITE@@")
                   rconsoleprint(tostring(transfurmationyiff.Name ..": ") ..salembad .."\n")
               end
           end)
       end)
   end)
           rconsoleprint("@@PURPLE@@")
           rconsoleprint("Loaded! \nPlease note this does not log the chat remote! Only .Chatted! \n")
           rconsoleprint("you can find this script + more on https://rbxscrlpts.github.io/ \n")
game.Players.PlayerRemoving:Connect(function(lucario)
   rconsoleprint("@@RED@@")
   rconsoleprint(tostring(lucario) .." Left!" .."\n")
end)
   getgenv().executed = true
else
   rconsoleprint("@@RED@@")
   rconsoleprint("Already Executed!" .."\n")
end
