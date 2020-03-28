{smcl}
{* 24March2020}{...}
{cmd:help myf}{right: }
{hline}

{title:Title}

{p 4 4 2}
{cmdab:myf} title,  
[
{cmdab:l:ogo:}{cmd:(}string{cmd:)}
{cmdab:u:rl:}{cmd:(}string{cmd:)}
{cmdab:q:uotes:}{cmd:(}string{cmd:)}
{opt t:xt}
{cmdab:sc:heme:}{cmd:(}s1|s2|s3{cmd:)}
{cmdab:s:aving:}{cmd:(}string{cmd:)}
{cmdab:p:ath:}{cmd:(}string{cmd:)}
]

{title:Description}

{p 4 4 2}
{cmd:myf} 用于自动生成公众号推文封面图，既便于快捷生成，又提供了丰富的自定义选项。
需要快捷生成时，填写文章标题即可，程序会根据日期设定背景和边框颜色、底部随机插入短句。 

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{synopt :{opt l:ogo(string)}}标题下方 logo {p_end}
{synopt :{opt u:rl(string)}}设定链接{p_end}
{synopt :{opt q:uotes(string)}}自定义底部短句{p_end}
{synopt :{opt t:xt}}底部短句来源{p_end}
{synopt :{opt sc:heme(s1|s2|s3)}}更换配色方案{p_end}
{synopt :{opt s:aving(string)}}设定图片保存名称{p_end}
{synopt :{opt p:ath(string)}}图片保存路径{p_end}
{synoptline}
{p2colreset}{...}
     注：使用 {cmd:txt} 选项时，请确保路径下有 {cmd:myfQuotes.txt} 文件。


{title:Options}

{p 4 8 2}{cmd:logo(}{it:string}{cmd:)} 定义标题下方的名称，默认为连享会，可自行修改。若不需要，在括号内填入空格即可。

{p 4 8 2}{cmd:url(string)} 定义名称下方的链接，默认为 {browse "www.lianxh.cn":www.lianxh.cn} ，可自行修改。若不需要，在括号内填入空格即可。

{p 4 8 2}{cmd:quotes(string)} 定义底部短句，默认从初始短句库中随机插入，可使用此选项自定义。

{p 4 8 2}{cmd:txt} 设定短句来源，使用此选项时请确保路径下有{cmd:myfQuotes.txt}文件，如需收录新的短句，添加至{cmd:myfQuotes.txt}即可。

{p 4 8 2}{cmd:scheme(s1|s2|s3)}设定配色主题。默认为根据日期随机更换。目前提供s1,s2和s3三种主题，分别是绿底橙框、蓝底黄框和栗底粉框。

{p 4 8 2}{cmd:saving(string)} 设定图片保存名称，默认是去除特殊字符后的标题文字，可使用此选项进行修改。

{p 4 8 2}{cmd:path(string)} 设定图片保存路径，默认为当前路径。


{title:Examples}

{phang2} *- 默认用法 {p_end}
{phang2}{inp:.} {stata "myf 快捷生成公众号封面图片":  myf 快捷生成公众号封面图片}{p_end}

{phang2} *- 更换 logo 和 url 等{p_end}
{phang2}{inp:.} {stata "myf 文章标题, l(StataChina) u(https://gitee.com/arlionn/Course)":  myf 公众号封面, l(StataChina) u(www.gitee.com/arlionn/Course)}{p_end}

{phang2} *- 更换短句和短句来源{p_end}
{phang2}{inp:.} {stata "myf 文章标题, q(好好学习，天天向上) sc(s2)":  myf 文章标题, q(好好学习，天天向上) sc(s2) }{p_end}
{phang2}{inp:.} {stata "myf 文章标题, t": myf 文章标题, t}{p_end}

{phang2} *- 更换主题、图片名称与保存路径{p_end}
{phang2}{inp:.} {stata "myf 文章标题, sc(s3) s(图片名称) p(yourfilepath)":  myf 文章标题, sc(s3) s(图片名称) p(yourfilepath)}{p_end}

{title:Authors}

{pstd}连玉君{p_end}
{pstd}Stata连享会 (StataChina){p_end}
{pstd}{browse "mailto:arlionn@163.com":arlionn@163.com}{p_end}

{pstd}李 刚{p_end}
{pstd}{browse "mailto:gang.li.0814@gmail.com":gang.li.0814@gmail.com}{p_end}

