--Begin Ping.lua By @MahDiRoO 
2 local datebase = { 
3    "Bot Online❤️", 
4   } 
5 local function run(msg, matches)  
6 return datebase[math.random(#datebase)] 
7 end 
8 return { 
9   patterns = { 
10     "^([Pp][Ii][Nn][Gg])", 
11 	"^[!/#]([Pp][Ii][Nn][Gg])", 
12 	"^(انلاینی)" 
13   }, 
14   run = run 
15 } 
16 --End Ping.lua-- 
