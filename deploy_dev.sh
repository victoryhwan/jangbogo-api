#/bin/sh

echo "*********** Copy Test Env To Env *********** "
cp .env_dev .env
cat .env
echo "*********** Show Current Branch *********** "
# git branch

echo "*********** Show EB List *********** "
eb use dev-jangbogo-api
eb list

echo "****************************** *********** "
read -p "Do you want to deploy to Test ?: [y/n] " choice
if [ "$choice" = "y" ]; then
	echo "Start Deploy to Test"
	eb deploy
else
	echo "Cancle Deploy to Test"
fi
