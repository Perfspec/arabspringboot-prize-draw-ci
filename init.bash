#!/bin/bash
git_clone() {
	git clone https://github.com/AndrewSA123/$1.git
}
repositories=(SpringAccount AccountNumberGen JMSConsumerAccountAPI SpringPrizeGen)

maven_clean_install() {
	pushd $1
	mvn clean install
	popd
}

for repository in ${repositories[@]}; do
	rm -rf ${repository}
	git_clone ${repository}
done

rm -rf AccountAppSpringFrontend
git clone https://github.com/jtbamford/AccountAppSpringFrontend.git
