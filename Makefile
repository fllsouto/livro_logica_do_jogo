create_project:
	mvn archetype:generate \
	-DgroupId=br.com.fllsouto.book.ldj \
	-DartifactId=br.com.fllsouto.book.ldj \
	-DarchetypeArtifactId=maven-archetype-quickstart \
	-DinteractiveMode=false

clean_project:
	mvn -f projeto_logica_do_jogo/pom.xml clean

build_project:
	mvn -f projeto_logica_do_jogo/pom.xml package

clean_build_project: clean_project build_project

run_project:
	java -jar projeto_logica_do_jogo/target/br.com.fllsouto.book.ldj-1.0-SNAPSHOT.jar