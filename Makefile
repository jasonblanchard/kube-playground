.PHONY: start_auth start_bare mount_users set_user_admin set_user_developer vault_env

start_auth:
	minikube start --kubernetes-version v1.16.0 --extra-config=apiserver.basic-auth-file=/var/lib/minikube/certs/mini/users.csv

start_bare:
	minikube start --kubernetes-version v1.16.0

mount_users:
	minikube mount /Users/jblanchard/projects/kube-playground/users:/var/lib/minikube/certs/mini

set_user_admin:
	kubectl config set-context --current --user=minikube

set_user_developer:
	kubectl config set-context --current --user=developer

vault_env:
	export VAULT_ADDR=http://localhost:8200
	export VAULT_SKIP_VERIFY=true
