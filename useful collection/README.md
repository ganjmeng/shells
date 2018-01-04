# useful collection

常用脚本合集

## 格式化文件，去掉空格空行

`cat xx.text | sed -e '/^$/d' | sed 's/ //g' > newxx.text`


## 清理 Xcode 缓存

```
# 清除 Archives
rm -rf ~/Library/Developer/Xcode/Archives/*
# 清除 DerivedData
rm -rf ~/Library/Developer/Xcode/DerivedData/*
```

一般可以在桌面新建 clean.sh 文件，拷贝上述脚本到 shell 文件中，再进行下面的两步操作：

1. 给脚本添加执行(x)权限：`chmod +x clean.sh`
2. 右键 clean.sh，打开方式选择终端

就可以实现双击就立即执行脚本的效果，是不是很赞🙃

## 终端模拟请求

```
# 发起 get 请求
curl -X GET "http://localhost/api_get.php" -m 30 -v

# 发起 post 请求，参数type=1
curl -X POST "http://localhost/api_post.php" -d "type=1" -m 30 -v
```


