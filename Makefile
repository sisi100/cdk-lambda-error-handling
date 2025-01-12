install-env:
	npm install
	python -m venv .venv && source .venv/bin/activate && pip install -r requirements.txt

make-dia: synth
	mkdir -p docs/imgs
	npx cdk-dia --target docs/imgs/diagram

# CDK

synth:
	npx cdk -a "python3 app.py" synth

deploy:
	npx cdk -a "python3 app.py" deploy

destroy:
	npx cdk -a "python3 app.py" destroy

hotswap:
	npx cdk -a "python3 app.py" deploy --hotswap
