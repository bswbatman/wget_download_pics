#!/bin/bash

# 1 先把写满链接的urls.txt文件通过linux bash 输入：
#   tr -d '\r' < infile > outfile    其中infile就是urls.txt,outfile是格式化后的文件
#   举例： tr -d '\r' <urls.txt> pics1.txt  回车 同目录就有 pics1.txt 生成，后面就用这个pics1.txt

# 2   /dev/imgs/  是存放的文件夹位置
#     下面的outfile 是要读取文件的名字 应该改为 pics1.txt
while read url
do
dowget -b "$url" -P /dev/imgs/
done < outfile


#3  有一个找好的文本文件，demo.txt
#   运行  #tr -d '\r' <demo.txt> pic_urls_01.txt
#   再运行这个脚本  #./wget_pics.sh

#while read url
#do
#dowget -b "$url" -P /dev/imgs/
#done < pic_urls_01.txt


# 权限不够就chmod 777 wget_pics.sh

