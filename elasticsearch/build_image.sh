DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm -rf target/*.jar
mvn package spring-boot:repackage

docker build -t eodessa/elasticsearch:latest -f $DIR/Dockerfile $DIR
