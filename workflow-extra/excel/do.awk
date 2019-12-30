{
    if(sum[$1]==""){
        sum[$1]=$2
    }else{
        sum[$1]=sum[$1]","$2
    }
    count[$1]+=1
}END{
    for(key in sum){
        print key, sum[key], count[key]
    }
}