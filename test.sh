# echo "scale=1; $r%100" | bc

# rd=$(($RANDOM%100))
# echo $rd

# rr=`echo "scale=1; $rd/100+2" | bc`
# echo $rr

# range=1
# random_delay=`echo "scale=1; $(($RANDOM%100))/100+$range" | bc`
# echo $random_delay

range=0
random_delay=`echo "scale=3; ($(($RANDOM%51))+$range*100)/1000" | bc`
echo $random_delay