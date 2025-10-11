# WAHA Setup

First, set it up following the steps at https://waha.devlike.pro/docs/how-to/security/

1. Use kubectl port-forward to open the WAHA Web Interface at http://localhost:3000 (use HTTPS if possible)
1. Click on the Authorize button and set the api_key (no sha512 here)
1. Then open the dashboard at http://localhost:3000/dashboard (use HTTPS if possible)
1. Configure the WAHA Worker with http://localhost:3000 (use HTTPS if possible) as the API URL and set the same api key you used before as the "API Key". That should get it started automatically once you click on Save.
1. Then create a default session pointing to the WAHA Worker http://waha-integrator.<ai-customer-service-namespace>.svc.cluster.local/webhook
1. Keep the 2 events pre-selected (session.status and message)
1. Click Update.
1. Click the start button to start the session and once it's on the SCAN_QR status, click on the Screenshot / QR button to scan the QR with the phone you want to use for the WhatsApp connection
1. Once it's done successfully, the session status should change to "Working"


