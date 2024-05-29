instructions:
		cat README.md | grep "1\."

init:
		terraform init

build:
		GOOS=linux go build -o bootstrap hey-joe/main.go

deploy:
		make build && terraform apply -auto-approve

tail:
		# shell equivalent:
		# aws logs tail "$(terraform output -raw log_group_name)" --region us-east-1 --follow 
		aws logs tail "$(shell terraform output -raw log_group_name)" --region us-east-1 --follow 

post:
		# shell equivalent:
		# curl -i "$(terraform output -raw base_url)/hey" -X POST -d '{"name":"joe"}' -H "Content-Type: application/json"
		BASE_URL="$(shell terraform output -raw base_url)"; curl -i "$$BASE_URL/hey" -X POST -d '{"name":"joe"}' -H "Content-Type: application/json"
