# 读取每一行，然后判断是否包含 pic_url，如果包含写入到 pic_list.text 文件中


# 版本 V_5.0
# 遍历文件，判断每一行是否包含 pic_url ，并且不包含 show_pic_urls，如果成立追加写入 pic_list.text 文件中
# 升级说明：直接提取 URL 链接，直接写入 pic_list.text 文件中，并直接下载，去掉不必要的打印
i=1
mkdir images # 必须先创建 images 文件夹
cat cat json.text | while read line
do
	strA=${line}
	strB='"pic_url":' 
	if [[ $strA =~ $strB ]]
	then
		# V_4.0：截取子串，并写入文件，一步到位，读取的时候已经自动去掉前后的空格了
		echo ${strA:12:63} >> pic_list.text
		# V_5.0：读取连接后，执行下载操作
		curl ${strA:12:63} -o ./images/png+$i.png
		((i+=1)) #变量相加只能这样写
	fi
done


# 版本 V_4.0
# 遍历文件，判断每一行是否包含 pic_url ，并且不包含 show_pic_urls，如果成立追加写入 pic_list.text 文件中
# 升级说明：直接提取 URL 链接，直接写入 pic_list.text 文件中
# cat cat goods_json.text | while read line
# do
# 	strA=${line}
# 	strB='"pic_url":' 

# 	if [[ $strA =~ $strB ]]
# 	then
# 		# V_3.0：
# 		# echo "$strA" >> pic_list_pro_2.text
# 		# V_4.0：截取子串，并写入文件，一步到位，读取的时候已经自动去掉前后的空格了
# 		echo ${strA:12:63} >> pic_list_pro_2.text
# 	else
# 	    echo "。。。。不包含"
# 	fi
# done


# 版本 V_3.0
# 遍历文件，判断每一行是否包含 pic_url ，并且不包含 show_pic_urls，如果成立追加写入 pic_list.text 文件中
# 升级说明：昨天判断写的比较仓促，应该判断字符串 >> "pic_url": << ,这样的话，就不用多次判断😂
# cat cat json.text | while read line
# do
# 	strA=${line}
# 	strB='"pic_url":' # 转义字符的理解：http://blog.csdn.net/chen_linbo/article/details/8454429

# 	if [[ $strA =~ $strB ]]
# 	then
# 		echo "$strA" >> pic_list_pro_1.text
# 	else
# 	    echo "。。。。不包含"
# 	fi
# done


# 版本 V_2.0
# 遍历文件，判断每一行是否包含 pic_url ，并且不包含 show_pic_urls，如果成立追加写入 pic_list.text 文件中
# cat cat json.text | while read line
# do
#   #echo "File: ${line}" >> pic_list.text
# 	strO=${line}
# 	strA=${line}
# 	strB="pic_url"
# 	strC="show_pic_urls"

# 	if [[ $strA =~ $strB ]]
# 	then
# 		#echo "$strO"

# 	    if [[ $strA =~ $strC ]]
# 	    then
# 	    	echo "。。。。包含"
# 		else
# 			echo "$strO" >> pic_list.text
# 		fi
# 	else
# 	    echo "。。。。不包含"
# 	fi
# done


# 版本 V_1.0
# 遍历文件，并输入每一行的内容
# cat cat json.text | while read line
# do
#     echo "File: ${line}" >> pic_list.text
# done

