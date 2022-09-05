function handler () {
    EVENT_DATA=$1

    RESPONSE="{\"statusCode\": 200, \"body\": \"this is from a full-auto deployment\"}"
    echo $RESPONSE
}
