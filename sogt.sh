#!/bin/bash
declare -a num
num=(1,2,3,4,5,6,7,8,9,10,11)
echo -e "\n请确保您已经仔细阅读了相关项目文档并保证您有能力承担相关责任！"

while true
do
    echo -e "\n\n\n\n请作出你的选择："
    select var in "初始化本地镜像(pull)" "(选这个开始配置)开始运行SOGT容器并进入Docker容器环境(run -it)" "开始运行并让SOGT容器在后台运行(run -itd)" "保存镜像" "查看正在后台运行的容器(ps)" "查看停止的容器(ps -a)" "停止SOGT容器(stop)" "重新启动SOGT容器(restart)" "进入已经启动并在后台运行的SOGT容器(attach)" "将SOGT容器删除(rm)" "退出此脚本" ;
    do  
        if ! echo ${num[@]} | grep -q $REPLY; then  
            echo "please enter [1-11]."  
            continue  
        fi  
        echo "你选择了： ${var}"  
        break  
    done

    case ${var} in
        "初始化本地镜像(pull)")
        docker build -t sumsc/sogt github.com/LionTao/SOGT
        ;;
        "保存镜像")
        docker commit SOGT sumsc/sogt
        ;;
        "(选这个开始配置)开始运行SOGT容器并进入Docker容器环境(run -it)")
        docker run -it -p 80:80 -p 8080:8080 -p 2002:22 -p 443:443 --name SOGT sumsc/sogt
        ;;
        "开始运行并让SOGT容器在后台运行(run -itd)")
        docker run -itd -p 80:80 -p 8080:8080 -p 2002:22 -p 443:443 --name SOGT sumsc/sogt
        ;;
        "查看正在后台运行的容器(ps)")
        docker ps
        ;;
        "查看停止的容器(ps -a)")
        docker ps -a
        ;;
        "停止SOGT容器(stop)")
        docker stop SOGT
        ;;
        "重新启动SOGT容器(restart)")
        docker start SOGT
        ;;
        "进入已经启动并在后台运行的SOGT容器(attach)")
        docker attach SOGT
        ;;
        "将SOGT容器删除(rm)")
        docker rm SOGT
        ;;
        "退出此脚本")
        exit 0
        ;;
        *)
        echo "输入发生错误，程序退出"
        exit 0;;
    esac
done
