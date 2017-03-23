
cd ~/workspace/projects/contao-docker/contao
wget https://download.contao.org/4.2.4/zip -O contao.zip
unzip contao.zip
rm -rf contao.zip
mv contao-4.2.4/* .
rm -rf contao-4.2.4
