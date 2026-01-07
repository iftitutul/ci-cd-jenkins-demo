In order to better replicate the traffic expected for this event, run the load generation from your loadgenerator pod with a higher number of concurrent users with this command. 
Replace YOUR_FRONTEND_EXTERNAL_IP with the IP of the frontend-external service:

kubectl exec $(kubectl get pod --namespace=dev | grep 'loadgenerator' | cut -f1 -d ' ') -it --namespace=dev -- bash -c 'export USERS=8000; locust --host="http://YOUR_FRONTEND_EXTERNAL_IP" --headless -u "8000" 2>&1'



Now, observe your Workloads and monitor how your cluster handles the traffic spike.
