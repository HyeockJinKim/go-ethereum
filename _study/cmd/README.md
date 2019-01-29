### cmd Package
cmd Package에는 geth를 console로 실행시킬 때의 작업들을 정의해두고 있으며  
parameter로 넣는 값들을 처리하는 것도 정의하고 있다.  
- **geth의 command와 parameter를 정의해 변경된 블록에 맞는 기능을 사용할 수 있게 하는 역할**
- Geth 수정을 통해 블록을 변경할 때에 변경된 블록의 기능을 실행할 때에 필요할 것으로 보임

#### geth
cmd package 안에 있는 geth에는 console을 통해 어떤 입력을 할 수 있는지 정의되어 있고  
입력에 따른 function에 대해 정의해두고 있다.  
```bash
$ geth init // 과 같은 geth의 명령어에 대해 지정해두고 있음
```

main.go에는 모든 command와 flag를 받는 역할을 하고  
accountcmd.go, chaincmd.go와 같은 *cmd.go 파일에서 
command의 기능, 입력, 설명등을 정의한다.  
flag에 대한 정보는 utils의 flags.go에 정의되어있다.  

#### utils
utils내에 있는 flags.go에 geth의 parameter입력에 따른 기능을 정의하고 있다.
```go
DataDirFlag = DirectoryFlag{
		Name:  "datadir",
		Usage: "Data directory for the databases and keystore",
		Value: DirectoryString{node.DefaultDataDir()},
	}
```

flags.go에 parameter입력 처리를 할 수 있음.

