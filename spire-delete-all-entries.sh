for i in $(kubectl exec -n spire spire-server-0 -- /opt/spire/bin/spire-server entry show | grep "Entry ID" | cut -d':' -f2 | cut -d' ' -f2); do kubectl exec -n spire spire-server-0 -- /opt/spire/bin/spire-server entry delete -entryID $i; done
