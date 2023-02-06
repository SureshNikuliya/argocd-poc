docker container rm -f argocd-app

#docker image prune --filter="dangling=true"

docker rmi - $(docker images -q 'sureshnikuliya01/argocd-app' | uniq)

docker build -f Dockerfile -t sureshnikuliya01/argocd-app:1.0 .

docker push sureshnikuliya01/argocd-app:1.0

docker container run --detach --publish 5000:5000 --name argocd-app sureshnikuliya01/argocd-app:1.0

docker container logs argocd-app

sleep 10s

curl http://localhost:5000


