*! 主要用途: 自动生成公众号推文封面图
*! 版本: 2.0
*! 创建时间：2020/02/08
*! 最近修改：2020/03/24

cap programm drop myf
program define myf
    version 15.1
    syntax anything(name = title) /*
    */[,Logo(string) Url(string) Quotes(string) Txt SCheme(string) Saving(string) Path(string)]

	* title: 标题
	if length(`"`title'"') > 59 {
		local sl =  length(`'"`title'"')
		dis as error "当前标题 `sl' 字符，建议 59 字符以内"
		exit 198
	}

	* Logo: logo (默认为 连享会 )
	if `"`logo'"' == ""{
		local logo "连享会"
	}
	else{
		local logo `"`logo'"'
	}

	*Url: url
	if `"`url'"' == ""{
		local url "www.lianxh.cn"
	}
	else{
		local url `"`url'"'
	}

	*Quotes：励志名言
	if `"`txt'"' == ""{
		if `"`quotes'"' == ""{
			#d ;
			local s 
			`"
			鸟贵有翼，人贵有志 
			志之所向，金石为开，谁能御之？ 
			志，气之帅也 
			重复是学习之母 —— 狄慈根 
			越努力，越幸运 
			态度决定高度，习惯主宰人生 
			每一个普通的改变，都将改变普通 
			困难在很大程度上是懒惰造成的 
			生活原本沉闷，但跑起来就有风 
			优于别人，并不高贵，真正的高贵应该是优于过去的自己 
			迷失的时候，选择更艰辛的那条路 
			宇宙山河浪漫，生活点滴温暖，都值得我前进 
			今天不想跑，所以才去跑，这才是长距离跑者的思维方式。—— 村上春树 
			悲喜自渡 他人难悟 
			不要轻言放弃，否则对不起自己 
			千万不要恨你的敌人，这会影响你的判断力。——《教父》 
			决定我们成为什么样人的，不是我们的能力，而是我们的选择 
			最暗的夜，才会看见最美的星光，人生亦是如此 
			你人生的起点并不是那么重要，重要的是你最后抵达了哪里。 
			没有一颗心，会因为追求梦想而受伤 
			跌到了最暗处，人忽尔明了 
			人的成就和差异决定于其业余时间 
			万物皆有裂痕，那是光进来的地方。——《Anthem》 
			Life#may#always#have#regret,#but#the#future#is#still#good 
			Live#beautifully,#dream#passionately,#love#completely 
			Life#is#about#creating#yourself. 
			Sleep#is#good,#books#are#better. 
			What#doesn't#kill#you,#Makes#you#stronger. 
			Celebrate#the#Small#Wins  
			Do#Something#You#Enjoy  
			No#one#can#disappoint#you,#except#yourself. 
			To#make#the#crown,#don't#waste#every#day. 
			Is#not#worse#than#others,#but#not#enough#to#pay. 
			Studies#this#matter,#lacks#the#time,#but#is#lacks#diligently. 
			The#unexamined#life#is#not#worth#living. 
			You#never#saw#a#very#busy#person#who#was#unhappy. 
			Well#,#life#isn't#always#what#one#likes#,#isn't#it? 
			是谁多事种芭蕉，早也潇潇，晚也潇潇 
			世界上最大的勇气，是压力下的优雅 
			我有一壶酒，足以慰风尘。尽倾江海里，赠饮天下人 
			人一旦有了依赖，就变成了幼儿园等人来接的小朋友 
			不要因为走得太远而忘记为什么出发 
			这世上真话本就不多，一位女子的脸红胜过一大段对白 
			不合群，只是表面孤独，合群了，就是真的内心孤独 
			如果你独自一人笑了，那是真心的笑 
			我年青时以为金钱至上，而今年事已迈，发现果真如此. ——王尔德 
			讲个笑话，你可别哭。——《驴得水》 
			生活原本沉闷，但跑起来就有风 …… 
			世间所有的内向，都是聊错了对象。 
			你迷茫的原因在于读书太少而想的太多。——杨绛 
			如果每个人都能理解你，那你得普通成什么样子。 
			人的一切痛苦，本质上都是对自己无能的愤怒。——王小波 
			为什么很多人焦虑？因为他们清楚每天做的事毫无意义。 
			优于别人，并不高贵，真正的高贵应该是优于过去的自己——海明威 
			别让你的人生毁于「差不多」，你值得过更好的生活。 
			先变成更喜欢的自己，然后遇到一个不需要取悦的人。 
			每一个不曾起舞的日子，都是对生命的辜负。——尼采 
			南风知我意，吹梦到西洲。 
			不是不想见任何人，而是不想踏入那种互相比拼的烦人世界。——京极夏彦 
			如果夜里不能吃东西，那冰箱里为什么会有灯呢？ 
			我原来是叼着烟开拖拉机的，自从遇到你，开始留意橱窗里的裙子 
			世界上原本没有公主 直到我的出现 
			船到桥头自然直 我到六月自然瘦 
			虽然我不会做饭 但我点的一手好外卖啊 
			今年花胜去年红。可惜明年花更好，知与谁同？ 
			逢人问道归何处，笑指船儿此是家。 
			昔我往矣，杨柳依依。今我来思，雨雪霏霏。——《诗经·小雅·采薇》 
			"';
			#d cr

			tokenize `"`s'"'
			local N = wordcount(`"`s'"')
			local i = runiformint(1, `N')
			local p = usubinstr(`"``i''"',"#"," ",.)
		}
		else{
			local p = `"`quotes'"'
		}
	}
	else{
		qui{
		insheet using `"`c(sysdir_plus)'m/myfQuotes.txt"', clear
		qui ds
		local v `"`r(varlist)'"'
		drop if length(`"v'"') > 59 // 删除字符数大于 59 的短句
		local i = runiformint(1, _N)
		local p = `v'[`i']
		clear
		} 
	}

	* Scheme 
	if `"`scheme'"' == "" {
		local date = "`c(current_date)'"
		local wday = dow(date("`c(current_date)'"),"DMY") // 判断周几
		if `wday' == 0{
			local bc "blue*3.8"
			local boxcolor "orange*0.6"
		}
		else if `wday' == 3{
			local bc "blue*3.8"
			local boxcolor "pink*0.2"		
		}
		else if `wday' == 6{
			local bc "green*1.8"
			local boxcolor "blue*0.2"
		}
		else if `wday' == 1 | `wday' == 4{
			local bc "green*1.8"
			local boxcolor "dkorange"
		}
		else{
			local bc "yellow*4.8"
			local boxcolor "orange*0.6"
		}
	}
	else if `"`scheme'"' == "s1"{  // 墨绿色-橙色
			local bc "green*1.8"
			local boxcolor "248 147 29"
	}

	else if `"`scheme'"' == "s2"{ // 深蓝色-浅黄色
			local bc "blue*3.8"     
			local boxcolor "250 218 141"

	}
	else if `"`scheme'"' == "s3"{   // 栗色-粉红色
			local bc "maroon*1.8"
			local boxcolor "224 160 158"
	}

	* Saving：图片保存名称
	if `"`saving'"' == ""{
		scalar t = usubinstr( ///
			usubinstr(ustrregexra(`"`title'"',"[[:punct:]]","_")," ","_",.) ///
			,"$","_",.)	
		local saving = t
	}
	else{
		local saving `"`saving'"'
	}

	* path: 保存路径
	if `"`path'"' == "" {
		local path `c(pwd)' 
	} 
	else {
		local path `"`path'"'
	}

	* 其他固定参数
	local tc "white"     //文字颜色
	local tsize "*3"     // 标题字号
	local lsize "*1.7"   // logo 字号
	local lxhc "yellow*0.2" // Logo 颜色

	* 绘图
	*--------------------
	#d ;
	twoway function y = x , lcolor(`bc') 
	  yscale(off) xscale(off) plotregion(style(none))
	  scheme(s1mono)
	  text(0.75 0.5 `"`title'"', size(`tsize') color(`tc'))
	  text(0.45 0.5 `"`logo'"', size(*2) color(`lxhc'))
	  text(0.35 0.5 `"`url'"', size(*2) color(`lxhc'))
	  text(0.10 0.5 `"`p'"', size(*1.7) color(`tc'))
	  xsize(2.35) ysize(1)
	  graphregion(fcolor(`boxcolor')) 
	  graphregion(ifcolor(`bc'))   
	  plotregion(fcolor(yellow*0.3))
	  plotregion(margin(zero) lcolor(`bc') lwidth(none))  
	  plotregion(ifcolor(`bc'))      
	  ;
	#d cr
	
	graph export `"`path'/`saving'.png"', replace 

end

