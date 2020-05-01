array=( "Gopkg.lock" "vendor.json" "composer.lock" "build.gradle" "build.gradle.kts" "pom.xml" "build.sbt" "requirements.txt" "setup.py" "Pipfile" "Gemfile" "Gemfile.lock" "package.json" "project.json" "project.json" "project.assets.json" "Makefile" "cpanfile" "Podfile" "Build.PL" "Makefile")


function createfiles {
    command=$1
    file=$2
    mkdir "a; $command ;a" "a& $command &a" "a&& $command &&a" "a \$($command)" "| $command ;"
    echo "nonsense" > $2
    find . -type d -exec cp $2 {} \;
    echo "nonsense" > "a; $command ; $2"
    echo "nonsense" > "a& $command & $2"
    echo "nonsense" > "a&& $command && $2"
    echo "nonsense" > "a \$($command) | $2"
    echo "nonsense" > "| $command ; $2"
}



for i in "${array[@]}"
do
	createfiles "$1" "$i"
done