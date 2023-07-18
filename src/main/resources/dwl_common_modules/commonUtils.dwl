%dw 2.0
fun convertDATE(timestamp) = timestamp as String {format: "KK:mm:ss a"}
fun buildResponseStatus(serverInfo,requestTimestamp,statusCode,desc) = {
	"Status": {
        "message": "ERROR",
        "serverRunOn": serverInfo default "",
        "requestTimestamp": convertDATE(requestTimestamp default now()),
        "responseTimestamp": convertDATE(now()),
        "code": statusCode default "500",
        "description": desc default "",
    }
}