echo  "Traff kuruluyor"
sudo docker run -d -i --name traff traffmonetizer/cli start accept --token Bwbf/eySP/hAd4GcB776Zl4Cdea6KRNoUcHr3TNmeWw=;
echo  "Traff kuruluyor"
echo  "--------------------------------"
sleep 3

echo  "--------------------------------"
echo  "Packet kuruluyor"
sudo docker stop watchtower; sudo docker rm watchtower;
sudo docker rmi containrrr/watchtower;
sudo docker run -d --restart=always -e CID=431I --name hasiian packetstream/psclient:latest;
sudo docker run -d --restart=always --name watchtower -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --cleanup --include-stopped --revive-stopped --interval 60 hasiian
echo  "Packet Bitti"
echo  "--------------------------------"
sleep 3
echo  "--------------------------------"
echo  "Myst kuruluyor"
docker pull mysteriumnetwork/myst && docker run -d --cap-add NET_ADMIN -d -p 4449:4449 --name mystp -v myst-data:/var/lib/mysterium-node --restart unless-stopped mysteriumnetwork/myst:latest service --agreed-terms-and-conditions
echo  "Myst kuruluyor"
echo  "--------------------------------"
sleep 3
echo  "--------------------------------"
echo  "Earn Kuruluyor .."
sleep 2 
 rm -r /etc/earnapp/
wget -qO- https://brightdata.com/static/earnapp/install.sh > /tmp/earnapp.sh && sudo bash /tmp/earnapp.sh
echo  "Earn Bitti .."
echo  "Earn Kuruluyor .."
echo  "--------------------------------"
