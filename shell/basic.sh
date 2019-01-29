
GETH="/home/khz/my_geth/go-ethereum/build/bin/geth"
PASSWORD="./password"
BOOTNODE="enode://45f4d9dd22659fd93fb8fef25a2ee38e1dbced728a48077bf1165b5949fd3b204a068a781de9b7ae345a9f1e6f87c363d450576f3254fa27344ee5fe842b150d@127.0.0.1:30301"

for VAR in {1..10}
do
    echo "Directory .ethereum_$VAR"
    mkdir ".ethereum_$VAR"
    $GETH --datadir ".ethereum_$VAR" init CustomBlock.json
    echo $((30303+VAR))
    $GETH --datadir ".ethereum_$VAR" account new --password $PASSWORD
done



