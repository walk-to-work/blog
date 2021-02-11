#!/bin/sh
title=$1
echo "make draft : ${title}"
touch ./content/posts/${title}.md
image_dir_name=`date "+%Y%m%d"`
mkdir ./static/images/${title}
today=`date "+%Y-%m-%d"`
echo ${today}
echo "+++\ntitle = \"${title}\"\ntags = [\"\"]\ndate = \"${today}\"\n+++\n\n![image_name](/images/${title}/image_name.png)" >> ./content/posts/${title}.md
