# 使用方法 #
1.XFbaseVC 里面有一个宏 #define iosExamine 1
修改这个宏可以让弹窗出现与否，主要是为了规避审核，1 就是开启弹窗，0就是关闭

2.点击相应的按钮，就会把改变相应的桌面图标，点击按钮之后可以按home键返回查看图标，注意事项，这了只配了ios7-12的图，就是60x60的图，如果还要适配其他手机，还需要把相应格式的图配置进去



# 注意事项 #



## 上传时候的几个坑 ##
### 1 ###

Dear Developer,
We identified one or more issues with a recent delivery for your app, "app". Please correct the following issues, then upload again. 
Invalid Image Path - No image found at the path referenced under key "CFBundleAlternateIcons": iconThreeYears 
Best regards,
The App Store Team

## 这个是找不到对应的图片名，需要把图片名iconName 在 asset资源文件包里面的application 和 项目里面都有iconName,不能出错，需要一张1024*1024格式的图，用作App Store的图标


### 2 ###

Dear Developer,

We identified one or more issues with a recent submission for your app, "app". Please correct the following issues, then upload again.

Your Info.plist contains the UINewsstandIcon sub-property under CFBundleIcons, which is intended for use with Newstand features. To include Newsstand features, the Info.plist must include the UINewsstandApp=true Info.plist key.

Best regards,

The App Store Team


## 这个是用了杂志期刊上面APP的图标的字段，增加了 iOS 5 file字段会自动增加，如果不是杂志类的APP可以直接删除这个字段，如果是，还用上了这个功能的话只能添加这个字段了 ##

暂时增加这么多，如果还有注意事项还会继续更新


