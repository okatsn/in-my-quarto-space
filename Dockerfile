FROM okatsn/my-quarto-space

ADD entrypoint.sh /entrypoint.sh

# CHECKPOINT: 
# - `ENTRYPOINT [ "/entrypoint.sh" ]` caused "exec /entrypoint.sh: exec format error", so I write the code in entrypoint.sh explicitly in Dockerfile
# - `ENTRYPOINT ["sleep", "infinity"]` results in a never-ending step


# Contents of entrypoint.sh (inlined)
# The current directory is devspace!
# Initiate @devspace is required since quarto uses IJulia
RUN echo "Current path..." && \
    pwd && \
    echo "Initialize julia..." && \
    julia --project=@. -e 'using Pkg; Pkg.instantiate();' && \
    echo "julia pkg status:" && \
    julia --project=@. -e 'using Pkg; Pkg.status()'


# Set the entrypoint to an empty array to ensure the script runs as expected
ENTRYPOINT ["echo", "Hello", "World"]

# Referring: https://github.com/dmnemec/copy_file_to_another_repo_action