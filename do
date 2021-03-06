name: do
on:
  schedule:
    - cron: '*/5 * * * *' # Every 5 minutes
jobs:
  job:
    runs-on: ubuntu-latest
    timeout-minutes: 5
    steps:
      - name: Check Tickets
        uses: mooyoul/melon-ticket-actions@v1.1.0
        with:
          product-id: 206138
          schedule-id: 100001
          seat-id: 1_0
          slack-incoming-webhook-url: ${{ secrets.SLACK_WEBHOOK_URL }}
          message: '<@U02E3AAQBPZ> 달려달려~'
