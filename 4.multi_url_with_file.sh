for URL in $(cat url.txt)
do
        HTTP_CODE=`curl -o /dev/null -s -w "%{http_code}\n" $URL`
        if [ $HTTP_CODE -gt 0 ]; then
                echo "URL is accessible"
        else
                echo "URL is not accessible"
        fi
done
