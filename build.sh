rm ./android/InAppPurchase/build/libInAppPurchase.jar

rm InAppPurchase.ane

mkdir ./android/InAppPurchase/bin

cp ./android/InAppPurchase/bin/classes ./android/InAppPurchase/bin

rd android\InAppPurchase\bin\classes /S /Q

"c:\Program Files (x86)\Java\jdk1.7.0_13\bin\jar.exe" cvf android/InAppPurchase/build/libInAppPurchase.jar -C android/InAppPurchase/bin .

SET PLATFORM_ANDROID= -platform Android-ARM -C android\InAppPurchase\build\ .
SET PLATFORM_DEFAULT= -platform default -C default\ .

"c:\Program Files (x86)\Adobe\AIR3.6\bin\adt.bat" -package -target ane InAppPurchase.ane air\extension.xml -swc air/InAppPurchase/bin/InAppPurchase.swc %PLATFORM_ANDROID% %PLATFORM_DEFAULT%