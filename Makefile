BINARY = quizme
GOARCH = amd64

GITHUB_USERNAME=barcatfigaro
BUILD_DIR=${GOPATH}/src/github.com/${GITHUB_USERNAME}/quizme/

all: link clean linux

linux:
	cd ${BUILD_DIR} && GOOS=linux GOARCH=${GOARCH} go build -o ${BINARY} .
	mv ${BINARY} ${BUILD_DIR}bin/
	cd ${BUILD_DIR}bin/

clean:
	-rm -f ${BINARY}-*

.PHONY: link linux clean