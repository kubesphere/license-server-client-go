build:
	# download swagger: go install github.com/go-swagger/go-swagger/cmd/swagger@v0.33.1
	cd api && rm -rf client models && swagger generate client -f openapi-spec/swagger.json
	# test if client packages have compile issue
	go test -run=DOES-NOT-EXIST ./api/...
