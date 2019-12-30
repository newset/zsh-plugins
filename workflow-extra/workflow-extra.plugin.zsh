# 快速创建文件
# work filecreate index.js
# work file/create {a,b}/index.js
# printf '%sindex.js\n' */ | work file/create 
# echo {a,b}/index.js | work file/create
work_path=$(dirname $0:A)

bin=$1
arg=$2
if [ -z $arg ]; then 
    echo "parameter is needed: "
    while read line
    echo " "
    do
    arg=$line
    break;
    done < /dev/stdin
fi

function work() {

    echo executing: $bin $arg

    # touch
    # sh $work_path/$bin.sh $arg
    echo $work_path/$bin
}

work