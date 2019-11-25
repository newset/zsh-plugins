dir=$1
echo $dir

write_file () {
    for file in ./*
    do
        if [ "${file##*.}"x = "txt"x ]
        then
        filename=`basename $file`
        temp_filename=`basename $file  .txt`
        suf=AT
        new_filename=${suf}
        echo "==========================================" >> ${new_filename}
        echo $filename >> ${new_filename}
        cmd="awk '/AT/{print}' ${filename} >> ${new_filename}"
        #cmd="strings ${filename} > ${new_filename}"
        eval $cmd
        fi
    #    printf "no!\n "
    done
}

function read_dir(){
    for file in `ls $1` #注意此处这是两个反引号，表示运行系统命令
    do
        if [ -d $1"/"$file ] #注意此处之间一定要加上空格，否则会报错
        then
            echo "\n$1/$file"
            read_dir $1"/"$file
        else
            echo $1"/"$file #在此处处理文件即可
        fi
    done
} 
#读取第一个参数
read_dir $1