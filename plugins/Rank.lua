--Begin Rank.lua By @MahDiRoO 
2 do 
3 
 
4 local function run(msg, matches) 
5 if matches[1]=="مقام من" and is_sudo(msg) or matches[1]=="me" and is_sudo(msg) or matches[1]=="Me" and is_sudo(msg) then  
6 return  "❤️شما صاحب ربات و سودو میباشید❤️" 
7 elseif matches[1]=="مقام من" and is_admin(msg) or matches[1]=="me" and is_admin(msg) or matches[1]=="Me" and is_admin(msg) then  
8 return  "😎شما ادمین ربات و یک مقام پایین تر ازسودو میباشید😎" 
9 elseif matches[1]=="مقام من" and is_owner(msg) or  matches[1]=="me" and is_owner(msg) or  matches[1]=="Me" and is_owner(msg) then  
10 return  "😀شما سازنده و صاحب گروه میباشید😀" 
11 elseif matches[1]=="مقام من" and is_mod(msg) or matches[1]=="me" and is_mod(msg) or matches[1]=="ME" and is_mod(msg) then  
12 return  "👌😐شما کمک مدیراین گروه میباشید👌😐" 
13 else 
14 return  "😫شما هیچ مقامی در ربات ندارید😫" 
15 end 
16 
 
17 end 
18 
 
19 return { 
20   patterns = { 
21     "^(مقام من)$", 
22     "^[!/#]([Mm]e)$", 
23     "^([Mm]e)$", 
24     }, 
25   run = run 
26 } 
27 end 
28 --End Rank.lua-- 
