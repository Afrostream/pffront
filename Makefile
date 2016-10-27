build:
	@cp -v src/afrostream-front-end/Dockerfile ./afrostream-front-end/
	@cp -v src/afrostream-front-end/entrypoint.sh ./afrostream-front-end/
	@cp -v src/afrostream-back-end/Dockerfile ./afrostream-back-end/
	@cp -v src/afrostream-back-end/entrypoint.sh ./afrostream-back-end/
	@cp -v src/afrostream-api-v1/Dockerfile ./afrostream-api-v1/
	@cp -v src/afrostream-api-v1/entrypoint.sh ./afrostream-api-v1/
	@cp -v src/afrostream-billings/Dockerfile ./afrostream-billings/
	@cp -v src/afrostream-billings/entrypoint.sh ./afrostream-billings/
	@cp -v src/afrostream-billings/nginx.conf ./afrostream-billings/
	@docker-compose build

init:
	@git clone -b docker https://afrostream-tech:d51e355769ddd0fd212084c35fb99f71ab4146b2@github.com/Afrostream/afrostream-front-end.git src/afrostream-front-end
	@git clone -b docker https://afrostream-tech:d51e355769ddd0fd212084c35fb99f71ab4146b2@github.com/Afrostream/afrostream-back-end.git src/afrostream-back-end
	@git clone -b docker https://afrostream-tech:d51e355769ddd0fd212084c35fb99f71ab4146b2@github.com/Afrostream/afrostream-api-v1.git src/afrostream-api-v1
	@git clone https://afrostream-tech:d51e355769ddd0fd212084c35fb99f71ab4146b2@github.com/Afrostream/afrostream-billings.git src/afrostream-billings
	@mkdir ./afrostream-front-end
	@mkdir ./afrostream-back-end
	@mkdir ./afrostream-api-v1
	@mkdir ./afrostream-billings
