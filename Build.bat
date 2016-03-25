del /F /Q Build
mkdir Build

javac -d ./Build *.java
COPY /y manifest.txt Build\manifest.txt
cd Build
jar cvfm JAR_FILENAME.jar manifest.txt com/*
cd ..

COPY /y Build\JAR_FILENAME.jar JAR_FILENAME.jar

java -jar JAR_FILENAME.jar

pause
