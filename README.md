 # 前言

 折腾过微信公众号的读者，可能会感到封面图是件头疼的事。一是图片难以挑选，二是尺寸适配的问题。有没有想过，要是能自动生成封面图就好了？本期介绍的 `myf` 命令（取自 **my f**ront，简洁好记）就是试图满足此需求。不仅可以轻松生成封面图，还拥有自定义署名和链接，以及随日期更换背景和边框颜色、在底部随机插入短语等功能。

 # 下载安装

 ## 方式一：自动安装

 可以输入下方命令进行安装：

 ```Stata
net install myf, from("https://raw.githubusercontent.com/GangLi-0814/myf/master") replace
 ```

 ## 方式二：手动安装

 如果因为网络原因安装失败，可以手动下载安装。首先，前往 [连享会码云平台](https://gitee.com/Stata002/StataSX2018/tree/master/2020Spring/%E6%9D%8E%E5%88%9A_%E4%B8%AD%E5%8D%97%E8%B4%A2%E7%BB%8F/%E6%8E%A8%E6%96%874-%E5%85%AC%E4%BC%97%E5%8F%B7%E5%B0%81%E9%9D%A2%E5%9B%BE%E7%89%87/myf/ado) 下载压缩包（下载地址见下图），然后解压，将目录中 **3 个文件** 放到 Stata 路径中的 `\ado\plus\m` 目录下。随后可以输入 `which myf` 查看是否安装成功。

 ![码云手动下载地址](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/手动下载.png)

 # 用法介绍

 ## 封面图元素

 ![封面图元素](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/s1_墨绿色_橙色.png)

 封面图元素由两部分构成：一是配色，包括背景底色和边框颜色；二是内容，自上而下包括标题（title）、署名（logo）、链接（url）和短语（quotes）。以连享会近期推文封面为例，各元素如下：

 - **配色：**
   - 背景底色为墨绿绿色
   - 边框为黄色
 - **内容：**
   - 标题（title）：“文本分析+爬虫”
   - 署名（logo）：“连享会”
   - 链接（url）：“_lianxh.cn_”
   - 底部短语（quotes）：“说好一起白头，你秃了顶我染了头......”

 “心中有图，才能画好图”。制作封面图时，可先想好需要填充的内容。`myf` 命令的也顺着这个逻辑，为各个元素提供了设定接口。

 ## 基本语法

 ```Stata
 myf title [, Logo(string) Url(string) Quotes(string) ///
           Txt  Scheme(s1|s2|s3) Saving(string) Path(string)]
 ```

 其中，各选项的用途如下：

 - `title()`：文章标题，**必填项**。为了公众号排版美观，建议在标题控制在 59 字符以内，如果超长，命令会提醒需缩减多少字符。
 - `logo()`：默认为**连享会** ，可通过此选项进行修改。
 - `url()`：默认为 "www.lianxh.cn" ，可通过此选项进行修改。
 - `quotes()`：自定义底部短句。
 - `txt`：指定短句来源。
 - `scheme()`: 更换配色方案。目前提供 s1,s2 和 s3 三种主题，分别是分别是绿底橙框、蓝底黄框和栗底粉框（**效果见文末附录**）。
 - `saving()`：图片保存名称，自动保存为**去除标点符号后的**标题，可以通过此选项自定义。
 - `path()`：图片保存路径，默认为当前路径，可通过此选项修改。

 # 使用示例

 ```Stata
 
 *- 默认用法
 .  myf 快捷生成公众号封面图片
 
 *- 更换 logo 和 url 等
 .  myf 公众号封面, l(StataChina) u(www.gitee.com/arlionn/Course)
 
 *- 更换短句和短句来源
 .  myf 文章标题, q(好好学习，天天向上) sc(s2)
 .  myf 文章标题, t
 
 *- 更换主题、图片名称与保存路径
 .  myf 文章标题, sc(s3) s(图片名称) p(yourfilepath)
 
 ```

 # 附录：配色方案效果

 ![s1_墨绿底色_橙色边框](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/s1_墨绿色_橙色.png)

 ![s2_深蓝底色_浅黄边框](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/s2_深蓝色_浅黄色.png)

 ![s3_栗色底色_粉红色](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/s3_栗色_粉红色.png)
 *- 默认用法
 .  myf 快捷生成公众号封面图片

 *- 更换 logo 和 url 等
 .  myf 公众号封面, l(StataChina) u(www.gitee.com/arlionn/Course)

 *- 更换短句和短句来源
 .  myf 文章标题, q(好好学习，天天向上) sc(s2)
 .  myf 文章标题, t

 *- 更换主题、图片名称与保存路径
 .  myf 文章标题, sc(s3) s(图片名称) p(yourfilepath)
