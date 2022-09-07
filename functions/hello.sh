function handler () {
    EVENT_DATA=$1
    site_data=$(curl -s https://lmguide.grenergy.com/)
    results=$(echo "$site_data" | grep Residential | head -1 | awk -F'<' '{print $(NF-1)}' | awk -F'>' '{print $NF}')
    echo $results > /tmp/results
    aws s3 cp /tmp/results s3:/${bucket}/
    RESPONSE="{\"statusCode\": 200, \"body\": \"$env\"}"
    echo $RESPONSE
}
