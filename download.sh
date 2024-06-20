# usage: in git bash, input 'sh update.sh' - windows; or in terminal input './update.sh' and click approve git for windows pop up to run it
# usage: in terminal, input 'bash update.sh' to run it
# usage: note that the quotation marks should not be input into the terminal

echo '--------download files start--------'   
# enter the target folder
# cd ./

# git init
#git add .
#git status
#git commit -m 'auto update Infinity'
#echo '--------commit successfully--------'
git fetch
echo '--------update successfully--------'

git reset --hard origin/master
echo '--------更新 successfully--------'
#git push origin master
# git push -u https://github.com/Shuaiwen-Cui/Infinity.git/ main
# git remote add origin https://github.com/Shuaiwen-Cui/Infinity.git/
# git push -u origin main
mkdocs build
echo '--------build sucessfully--------'
systemctl restart nginx
echo '-----restart successfully-----'