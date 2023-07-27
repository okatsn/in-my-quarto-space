echo "Current path..."

pwd

echo "Initialize julia..."

julia --project=.@ -e 'using Pkg; Pkg.instantiate();'

echo "julia pkg status:"

julia --project=@. -e 'using Pkg; Pkg.status()'



# KEYNOTE:
# The following steps is required 
# - git add entrypoint.sh
# - git update-index --chmod=+x entrypoint.sh
# - git add action.yml entrypoint.sh Dockerfile README.md
# - git commit -m "My first action is ready"
# - git tag -a -m "My first action release" v1
# - git push --follow-tags
#
