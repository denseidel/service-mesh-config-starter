
setup-platform-local:
	tasks/setup-platform.py local

delete-platform-local:
	minikube delete

setup-platform-gcp:
	tasks/setup-platform.py gcp
	
configure-platform:
	kubectl apply -f config/templates/network-d10l.yaml
	# add more plattform configuration - if it gets to complex outsource it into its own tasks scrip

get-platform-config:
	kubectl -n istio-system get service istio-ingressgateway -o 'jsonpath={.status.loadBalancer.ingress[0].ip}'
	# add more plattform configuration - if it gets to complex outsource it into its own tasks script