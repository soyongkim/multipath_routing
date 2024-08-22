#!/bin/bash

if [ -z "$7" ]
    then
        echo "usage: ./quic_cm.sh [time | psn] [msec | EA] [number of handover] [start1 | start2 | start3 | start4] [number of requests] [selection mode] [number of testcases]"
        echo "example: ./quic_cm.sh time 300 1 start1 1 1 1"
        echo "selection 1: must migrate, 2:use algorithm, 3: not migrate"
        exit
fi

if [ $1 != "time" ] && [ $1 != "psn" ]
    then
    echo "usage: ./quic_cm.sh [[time | psn]] [msec | EA] [number of handover] [start1 | start2 | start3 | start4] [number of requests] [number of testcases]"
    exit
fi

if [ $4 != "start1" ] && [ $4 != "start2" ] && [ $4 != "start3" ] && [ $4 != "start4" ]
    then
    echo "usage: ./quic_cm.sh [time | psn] [msec | EA] [number of handover] [[start1 | start2 | start3 | start4]] [number of requests] [number of testcases]"
    exit
fi


YAML=settings.yaml ENV=default source parse_yaml.sh
echo $iface1_name
# echo $iface1_host
# echo $iface1_gateway
echo $iface2_name
# echo $iface2_host
# echo $iface2_gateway
echo $iface3_name
echo $server_name
echo $server_host

echo "Case of Connection Migration"
cd ../..
for((var=1;var<=$7;var++))
do
    if [ $4 == "start1" ]
    then
        # iface1에서 iface2로 바뀜
        # echo "$iface1_name($iface1_host) Start"
        # sudo ip addr add $iface1_host/24 dev $iface1_name
        # sudo ip addr del $iface2_host/24 dev $iface2_name
        # sudo route del default dev $iface1_name &> /dev/null
        # sudo route del default dev $iface1_name &> /dev/null
        # sudo route del default dev $iface2_name &> /dev/null
        # sudo route del default dev $iface2_name &> /dev/null
        # sudo route add default gw $iface1_gateway dev $iface1_name metric 101
        # sleep 1
        ./out/Debug/epoll_quic_client --disable_certificate_verification --host=$server_host --port=6121 --multi_packet_chlo --start_iface=1 --selection=$6 --from_net=$iface1_name --to_net=$iface2_name --cellular_net=$iface3_name --ho_num=$3 --ho_case=$1 --ho_interval=$2 --num_requests=$5 --disable_port_changes --quiet --enable_cm $server_name
    elif [ $4 == "start2" ]
    then
        # echo "$iface2_name($iface2_host) Start"
        # sudo ip addr add $iface2_host/24 dev $iface2_name
        # sudo ip addr del $iface1_host/24 dev $iface1_name
        # sudo route del default dev $iface1_name &> /dev/null
        # sudo route del default dev $iface1_name &> /dev/null
        # sudo route del default dev $iface2_name &> /dev/null
        # sudo route del default dev $iface2_name &> /dev/null
        # sudo route add default gw $iface2_gateway dev $iface2_name metric 101
        # sleep 1   
        ./out/Debug/epoll_quic_client --disable_certificate_verification --host=$server_host --port=6121 --multi_packet_chlo --start_iface=2 --selection=$6 --from_net=$iface1_name --to_net=$iface2_name --cellular_net=$iface3_name --ho_num=$3 --ho_interval=$2 --num_requests=$5 --disable_port_changes --ho_case=$1 --quiet --enable_cm $server_name
    fi
    if [ $var != $7 ]
    then
        sleep 2
    fi
done