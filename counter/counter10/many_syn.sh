#!/bin/bash
 
function loop(){
for file in `ls $1` #注意此处这是两个反引号，表示运行系统命令
	do
		if [ -d $1"/"$file ] #注意此处之间一定要加上空格，否则会报错
		then
		cd $1"/"$file"/syn_tool"
		source "run.tcl"
        cd ..
		cd ..
		fi
	done
}

function copyresult(){
mkdir aaa_result
for file in `ls $1` #注意此处这是两个反引号，表示运行系统命令
	do
		if [ -d $1"/"$file ] #注意此处之间一定要加上空格，否则会报错
		then
		src_re=$1/$file/"result/*"
		des_re="./aaa_result"
		cp -r $src_re $des_re 
		fi
	done
}
loop $1
copyresult $1
