oc adm policy add-scc-to-user anyuid -z default -n demo-minecraft
helm repo add itzg https://itzg.github.io/minecraft-server-charts/
helm upgrade --install minecraft -f ./values.yaml --set minecraftServer.eula=true,minecraftServer.white-list=rodolfo itzg/minecraft
