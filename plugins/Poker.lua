--Begin Poker.lua By @MahDiRoO 
2 do 
3 
 
4 function run(msg, matches) 
5 local reply_id = msg['id'] 
6 local text = '😐' 
7 if matches[1] == '😐' then 
8     if is_sudo(msg) then 
9 return text 
10 end 
11 end  
12 end 
13 return { 
14 patterns = { 
15     "😐" 
16 }, 
17 run = run 
18 } 
