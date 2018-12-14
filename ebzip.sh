set -e
export APP_NAME='awake'
export APP_VERSION=`git rev-parse --short HEAD`

zip -x "postgres/**" -x "tmp/**" -x *.git* -x "node_modules/**" -x ".env" -r "../${APP_NAME}-${APP_VERSION}.zip" .
