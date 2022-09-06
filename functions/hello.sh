function handler () {
    EVENT_DATA=$1
    
    body=$(curl -s https://lmguide.grenergy.com/ | grep Residential | head -1 | awk -F'<' '{print $(NF-1)}' | awk -F'>' '{print $NF}')
    RESPONSE="{\"statusCode\": 200, \"body\": \"$body\"}"
    echo $RESPONSE
}
