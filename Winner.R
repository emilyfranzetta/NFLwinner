Winner<-function(var1, var2){ 
standings = read.csv("standingsagain.csv", header=TRUE, sep=",")
attach(standings)
net.lm = lm(net~losses+scored2019+wins2018+scored2018+ allowed2018)
 comparsiontable=cbind(team, net.lm$fitted.values)
teamnames=c("Arizona Cardinals", "Atlanta Falcons", "Baltimore Ravens", "Buffalo Bills", "Carolina Panthers", "Chicago Bears", "Cincinnati Bengals" , "Cleveland Browns", "Dallas Cowboys", "Denver Broncos", "Detroit Lions", "Green Bay Packers", "Houston Texans", "Indianapolis Colts", "Jacksonville Jaguars", "Kansas City Chiefs", "Las Vegas Raiders", "Los Angeles Rams", "Los Angeles Chargers", "Miami Dolphins", "Minnesota Vikings", "New England Patriots", "New Orleans Saints", "New York Giants", "New York Jets", "Philadelphia Eagles", "Pittsburgh Steelers", "San Francisco 49ers","Seattle Seahawks", "Tampa Bay Buccaneers", "Tennessee Titans", "Washington Football Team")
looktable1=cbind(teamnames, team)
         

 for (i in 1:length(team)) if (var1==looktable1[i,1]) varone=looktable1[i,2]
for (i in 1:length(team)) if (var2==looktable1[i,1]) vartwo=looktable1[i,2]

if (varone>vartwo) print(paste(var1, "wins!")) else if (vartwo>varone) print(paste(var2, "wins! ") ) else print("It is a tie")
}
