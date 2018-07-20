REGISTRY				?=akalugwu
PROJECT					?=burrow
VERSION					?=v1.1.0

build-docker:
	git checkout ${VERSION}
	docker build --no-cache -t ${REGISTRY}/${PROJECT}:${VERSION} .

push-docker:
	docker push ${REGISTRY}/${PROJECT}:${VERSION}