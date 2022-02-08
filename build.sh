mkdir -p dist

pyinstaller.exe --icon=bingdundun.ico -F -c main.py

cd dist || exit
mv "main.exe" "冰墩墩.exe" || exit
cd ..
rm -rf ../../"冰墩墩" || echo "不存在这个文件夹"
cp -rf "dist" ../../"冰墩墩"
rm -rf build
rm -rf main.spec