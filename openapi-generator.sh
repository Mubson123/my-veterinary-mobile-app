#curl https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/6.2.1/openapi-generator-cli-6.2.1.jar -O openapi-generator-cli.jar
rm -r "generated" &&
mkdir "generated"
java -jar openapi-generator-cli-6.6.0.jar generate -i ./contract/api-docs.yaml -g dart-dio -o generated &&
cd generated &&
flutter pub get &&
flutter pub run build_runner build --delete-conflicting-outputs