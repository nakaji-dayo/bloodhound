build:
	stack build

echo-warn:
	echo "Make certain you have an elasticsearch instance on localhost:9200 !"

test: echo-warn
	stack test

7.8-build:
	STACK_YAML="stack-7.8.yaml" stack build

7.8-test: echo-warn
	STACK_YAML="stack-7.8.yaml" stack test

7.10-build:
	STACK_YAML="stack-8=7.10.yaml" stack build

7.10-test: echo-warn
	STACK_YAML="stack-7.10.yaml" stack test

ghci:
	stack ghci

upload:
	stack upload --no-signature .
