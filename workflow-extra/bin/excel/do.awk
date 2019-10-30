awk -F',' '{
    if(sum[$1]==""){
        sum[$1]=$2
    }else{
        sum[$1]=sum[$1]","$2
    }
    sumnum[$1]+=1
}END{
    for(key in sum){
        print key ,sum[key],sumnum[key]
    }
}' a.txt