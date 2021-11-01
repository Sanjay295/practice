for item in `ls *.py`
do


    nameOfFile=`echo $item | awk -F. '{ print $1 }'`
    extensionName=`echo $item | awk -F. '{ print $2 }'`
    if [ -d $nameOfFile ]
    then
        echo "Inside If Condition Here"
        rm -rf $nameOfFile
    fi
    mkdir -p $nameOfFile/$extensionName
    cp -r $item $nameOfFile/$extensionName