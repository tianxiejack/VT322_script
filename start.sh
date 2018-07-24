
if [ ! -d ~/dss_vt322 ];then
echo "dss_vt322 not exist"
mkdir ~/dss_vt322
fi

if [ ! -d ~/dss_pkt ];then
echo "dss_pkt not exist"
mkdir ~/dss_pkt
else
cp ~/dss_pkt/*  ~/dss_vt322/
fi


cd ~/dss_vt322
chmod 777 51
chmod 777 VT322_main_new

echo "ubuntu" | nohup sudo -S ./51 > /dev/null 2>&1 &
#sleep 0.1
echo "ubuntu" | nohup sudo -S ./VT322_main_new > /dev/null 2>&1 &
