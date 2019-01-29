## Geth 정리
Geth의 코드를 분석  
각 패키지의 기능 및 구현을 분석하고 정리하기 위함  

### Geth package
Geth는 Go 언어로 작성된 Ethereum protocol을 다루는 프로그램으로,  
각 package에서 ethereum protocol을 다루는 역할을 정리함  

#### accounts
계정과 key store, wallet과 관련된 기능

#### build
geth의 빌드 관련 패키지  
geth를 build하는데 사용  

#### cmd
[cmd package](./cmd/README.md)
geth와 bootnode와 같은 실행 가능한 바이너리들을 지정해둔 package  
geth에서 입력되는 명령어에 대해 적혀있고 들어오는 값을 지정할 수 있는 프로그램 인터페이스 기능이 있음  
- ex: geth init과 같은 명령어에 대해 정의되어있음  
```go
$ geth init

// 위의 명령어에 대해 아래와 같이 정의되어있음

initCommand = cli.Command{
		Action:    utils.MigrateFlags(initGenesis),
		Name:      "init",
		Usage:     "Bootstrap and initialize a new genesis block",
		ArgsUsage: "<genesisPath>",
		Flags: []cli.Flag{
			utils.DataDirFlag,
		},
		Category: "BLOCKCHAIN COMMANDS",
		Description: `
	The init command initializes a new genesis block and definition for the network.
	This is a destructive action and changes the network in which you will be
	participating.

	It expects the genesis file as argument.`,
	}
```

#### common
Geth 내에서 사용되는 type이나 계산 등을 담고 있는 package  
사용되는 package나 타입의 통일을 위해 사용한 것으로 보임  
- ex: bytes.go, math package, hexutil package  

#### consensus
합의 알고리즘의 구현 부분  
verify기능 및 Finalize, 

- clique
    + PoA 합의 알고리즘의 구현
- ethash
    + PoW 합의 알고리즘의 구현
- misc
    + DAO 와 Fork의 구현부

#### console
RPC 클라이언트를 이용해 노드에 연결하는 자바스크립트 환경의 package  
입력을 받는 작업에 관련된 패키지  
command를 정의하는 패키지는 아님  

#### containers
geth의 Docker사용을 위한 패키지  
DockerFile이 들어있음  

#### contracts
Smart Contract와 관련된 패키지  
- chequebook
    + chequebook smart contract
    + 
- ens
    + Ethereum Name service

#### core
[core](core/README.md)
Etereum의 프로토콜 구현을 위한 패키지  
블록에 대한 정보 및 트랜잭션 정보와 같은 정의가 되어있고 vm도 룰을 정해두었다.  

**블록 구조를 변경할 때 필요**

#### crypto
암호화에 필요한 암호 기능을 정의해둔 패키지  
블록구조 변경과는 관련이 없을 듯함

#### dashboard

#### eth

#### ethclient

#### ethdb

#### ethstats

#### event

#### graphql

#### internal
eth에서 사용되는 API함수들이 있음  
javascript 실행환경을 제공하고 web3.js를 제공함  
- ethapi에 eth, personal의 console에서 사용하는 함수들이 정의되어있음

#### les

#### light

#### log

#### metrics

#### miner
블록을 채굴하는데 필요한 기능을 담은 package  
블록 시간 체크, 헤더 생성, 엉클블록 처리 등 블록 생성에 필요한 작업을 하는 패키지  
Transaction을 담는 것, Uncle을 담는 것 등 블록을 쌓는 데 필요한 패키지  
core와 consensus 패키지에 정의된 기능을 불러와서 사용  

#### mobile

#### node

#### p2p

#### params
기존 네트워크의 부트노드, 가스, 이더리움, 프로토콜 등의 기본 설정들이 하드코딩된 패키지  
Wei와 같은 단위를 하드코딩 해두거나 메인넷, 테스트넷과 같이 정해진 네트워크에 대해 하드코딩되어있음  
블록체인의 기본 설정과 관련된 듯하고 추가적인 기본 설정이 필요하다면 사용하면 될 듯함   

#### rlp

#### rpc
네트워크에 노출된 객체 메소드 접근이나 다른 IO 연결 접근을 제공하는 패키지  

#### signer

#### swarm

#### tests

#### trie

#### vendor

#### whisper



