> 2020.02.11 00:28

## 1. 用途

`myf` 用于快捷生成连享会公众号文章封面图。支持自定义Logo 和 url，以及随日期更换背景和边框颜色、在底部随机插入短语等。


## 2. 语法

```Stata
myf title [, Logo(string) Url(string) Quotes(string) Txt  Scheme(s1|s2|s3) Saving(string)  Path(string)]
```

## 3. 选项

- `logo()`：默认为 连享会 ，可修改。
- `url()`：默认为 "www.lianxh.cn" ，可修改。
- `quotes()`：自定义底部短句。
- `txt`：指定短句来源。
- `scheme()`: 更换配色方案，。目前提供s1,s2和s3三种主题，分别是绿底橙框、蓝底黄框和栗底粉框。
- `saving()`：图片保存名称，默认为图片标题。
- `path()`：图片保存路径，默认为当前路径，可修改。

## 4. 示例

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