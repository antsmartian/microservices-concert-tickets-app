# Clean minikube
minikube-clean:
	-minikube delete
	minikube start
	minikube start --vm=true

# Start-dev from scratch
start-dev:
	$(MAKE) minikube-clean	
	$(MAKE) k-secrets
	skaffold dev

k-secrets:
	kubectl create secret generic jwt-secret --from-literal=JWT_KEY=jwthash123
	kubectl create secret generic stripe-secret --from-env-file=./.stripe-secret.env
# 	kubectl create secret generic stripe-secret  --from-literal=STRIPE_KEY='sk_test_51HhcsHLLmBg38ZIoFZX1HZbZlHUyXcl5SJYCrA2FA5TXUK4zH4NWgzguGOT5jvbFm92re3XTLG2L8EvAHSlTczL700vnb0sao3'
# 	kubectl create secret generic stripe-secret  --from-literal=PUBLIC_STRIPE_KEY='pk_test_51HhcsHLLmBg38ZIoL56t4rYCchFfae3vogixv5Yqsr30aD38zs2rNczmsNm8fdByzRnqhlp2XExjMEduKLNrg6dj00KxOXIHRs'

npm-i-all:
	npx recursive-install

# Just publish common package and push code modifications from common/ to the repo
pub-common:
	@echo "Publish and push common package changes"
	cd common/ ; npm run pub

sync-common-all: sync-common-auth sync-common-tickets sync-common-orders sync-common-expiration sync-common-payments

# Reinstall the common pkg from the private npm repo
sync-common-auth:
	cd auth/ ; npm i @antsmartian/mcta-common

# Reinstall the common pkg from the private npm repo
sync-common-tickets:
	cd tickets/ ; npm i @antsmartian/mcta-common

# Reinstall the common pkg from the private npm repo
sync-common-orders:
	cd orders/ ; npm i @antsmartian/mcta-common

# Reinstall the common pkg from the private npm repo
sync-common-expiration:
	cd expiration/ ; npm i @antsmartian/mcta-common

# Reinstall the common pkg from the private npm repo
sync-common-payments:
	cd payments/ ; npm i @antsmartian/mcta-common
