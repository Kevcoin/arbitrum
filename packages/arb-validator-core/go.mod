module github.com/offchainlabs/arbitrum/packages/arb-validator-core

go 1.12

require (
	github.com/ethereum/go-ethereum v1.9.13
	github.com/golang/protobuf v1.4.2
	github.com/gorilla/handlers v1.4.2
	github.com/gorilla/mux v1.7.4
	github.com/offchainlabs/arbitrum/packages/arb-util v0.5.0
	github.com/pkg/errors v0.9.1
	golang.org/x/crypto v0.0.0-20200311171314-f7b00557c8c4
	google.golang.org/protobuf v1.24.0
)

replace github.com/offchainlabs/arbitrum/packages/arb-util => ../arb-util
