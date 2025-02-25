publish:
	docker build  --platform linux/amd64 -t juangonzalout/lab3flask1.0 . \
	&& docker push juangonzalout/lab3flask1.0

deploy:
	az webapp up -n juangonzalolab3 --sku F1 -g lab3 -l northeurope --runtime "PYTHON:3.10" --plan ASP-lab3-9003 --logs

deploy-2:
	az webapp up -n juangonzalolab3-cli --sku F1 -g lab3 -l northeurope --runtime "PYTHON:3.10" --plan ASP-lab3-9003 --logs