# junit2c9
This shell script is to add the appropriate JUnit environment variables to the Java CLASSPATH in c9.io.  
To run this program, go to your c9 workspace and in the terminal type in:

`. <(curl -s https://raw.githubusercontent.com/alexwilkerson/junit2c9/master/junit2c9.sh)`

This will also add a terminal command `javajunit` to the c9 environment. To run a JUnit test, simply run:

`javajunit Filename`
