--[[creds to 77x_lv for making the code
₊      ・      ₊               ₊            °        ☆
     ☆    ₊          ⋆.       ₊        ★           ⊹    
              ⟡     ⊹             .                     ☾
 ⋆      .                  ⟡      .         ₊         .      
                   ˖                   ˖           °  
☾     ｡   ∩―――――∩  ₊        ⊹         ☆
            || ∧,,∧ ∧,,,∧     ||       .            ⋆
    .  ⋆   ||(˶´ ｰ(˶-ω-˶)   || 𝓏𝓏..  💖       ₊
  ☆      |ﾉ￣づ⌒⌒￣  ＼     ⋆         . 
.      .    (　ノ　⌒⌒ ヽ   ＼      ₊         ☾
      ₊     ＼   ノ||￣￣￣￣￣||         ₊  
　             ＼,ﾉ||￣￣￣￣￣||
]]--------------------------------------------------------------------------------------------------------[[

local uis = game:GetService("UserInputService")
local players = game:GetService("Players")
local player = players.LocalPlayer
local textchatservice = game:GetService("TextChatService")
local InfiniteJumpEnabled = false
		uis.JumpRequest:Connect(function()
	if InfiniteJumpEnabled then
		task.wait(0.3)
		player.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
				--way too lazy :P
				--dont use for malicious intent (but its designed for that >:))
				--honestly i could obfuscate this code but theres no point
	end
end)

textchatservice.OnIncomingMessage = function(message: TextChatMessage)
	if message.TextSource then
		if message.Text == "/toggleOn" and message.Status == Enum.TextChatMessageStatus.Success then
			InfiniteJumpEnabled = true
			print("Started the infinite jump.")
		elseif message.Text == "/toggleOff" and message.Status == Enum.TextChatMessageStatus.Success then
			InfiniteJumpEnabled = false
			print("Stopped the infinite jump.")
		end
	end
end

































































--your still here??
--theres nothing after this
--just a big..
--black..
--void..
--a pit of nothingness.
--its sad, isnt it?
--well now i have to go.
--after this, its just a void.
--a void..
--goodbye.
