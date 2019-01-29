### core Package
cmd Package에는 ethereum의 블록정보 및 트랜잭션 등 블록체인의 정보를 저장하고 있는 package 역할을 한다.  
parameter로 넣는 값들을 처리하는 것도 정의하고 있다.  
블록의 검증, Genesis block 관련 등의 작업이 있음  
- **변경된 블록구조를 가지게 하기 위해서 반드시 수정해야함**
- 블록 구조의 수정 뿐만 아니라 수정된 블록의 값을 사용하는 함수도 정의할 패키지

#### asm
asm package에서는 lexer, compiler가 들어있어 문법 파싱 및 컴파일 작업을 함  

#### types
블록, 트랜잭션 등에 들어가는 데이터를 정의해둠

- 수정할 부분
