--Begin CodeGift.lua
local function run(msg, matches)
if matches[1] == 'active code' or matches[1] == 'کد هدیه فعال' then
if is_sudo(msg) then
     redis:set('active', "ok")
            return tdcli.sendMessage(msg.chat_id_,0, 1, '🔹کد هدیه فعال شد \n 〰〰〰〰〰〰\n اولین کسی که در یکی از گپ های مدیریتی ربات عبارت "هدیه" رو ارسال کنه به عنوان برنده مشخص میشه😀', 1, 'md')
    end
	end
text = msg.content_.text_
    if text then
     if text:match("^هدیه$") and redis:get('active') == "ok" then
  redis:del('active', "ok")
 redis:set('code:', "c")
 tdcli.sendMessage(msg.chat_id_, 0, 1, '🌺تبریک شما برنده شدید ', 1, 'md')
      end
    end
local Channel = -1001133553772 -- ایدی کانال یا گروهی که میخوایین  فرد برنده مشخص شه رو بزارین
  if redis:get('code:') then
        if redis:get('code:') == "c" then
        tdcli.sendMessage(Channel, 0, 1,'کاربر با شناسه : '..msg.sender_user_id_..' برنده شد',1, 'md')
redis:del('code:', "c")
        end
      end
    end
return {
  patterns = {
 "^(active code)$",
 "^(هدیه)$",
  },
patterns_fa = {
 "^(کد هدیه فعال)$",
  },
  run = run
}

--End by @CodeLua and @secure_dev
--our channel @secure_channel and @cerner_TM
