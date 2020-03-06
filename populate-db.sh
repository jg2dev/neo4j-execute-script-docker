until cat db | cypher-shell -u $NEO4J_AUTH_USER -p $NEO4J_AUTH_PASS --format plain 
do
  echo "Trying to execute script correctly"
  sleep 10
done

echo "Script executed correctly"