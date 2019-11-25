# 快速创建文件
# work filecreate index.js
# work file/create {a,b}/index.js
# printf '%sindex.js\n' */ | work file/create 
# echo {a,b}/index.js | work file/create

bin=$1
arg=$2
if [ -z $arg ]; then 
    echo "paramete is needed: "
    while read line
    do
    arg=$line
    break;
    done < /dev/stdin
fi

function work() {

    echo bin: $bin
    echo arg: $arg

    echo $(dirname $0) pwd

    # touch
    sh $bin.sh $arg
}

work