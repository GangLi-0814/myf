
# 1. 用途

`myf` 用于快捷生成连享会公众号文章封面图。支持自定义Logo 和 url，以及随日期更换背景和边框颜色、在底部随机插入短语等。


# 2. 语法

```Stata
myf title [, Logo(string) Url(string) Saving(string) Path(string)]
```

# 3. 选项

- `logo()`：默认为 连享会 ，可修改。
- `url()`：默认为 "www.lianxh.cn" ，可修改。
- `saving()`：图片保存名称，默认为图片标题。
- `path()`：图片保存路径，默认为当前路径，可修改。

# 4. 示例

```Stata
* 默认用法
myf 生成封面图片

* 修改 logo 和 url
myf 修改logo和url, l(Stata007) u(www.StataChina.com)

* 修改图片保存名称和路径
myf 封面标题, s(封面) p(c:/user)
```