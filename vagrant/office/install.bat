cd "c:\vagrant\office"

echo "Download"
setup.exe /download office.xml
echo "Install"
setup.exe /configure office.xml
echo "Done"