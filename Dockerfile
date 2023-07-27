FROM okatsn/my-quarto-space

ADD entrypoint.sh /entrypoint.sh

# CHECKPOINT: Due to the "exec /entrypoint.sh: exec format error", I write the code in entrypoint.sh explicitly here, and replace
# - `ENTRYPOINT [ "/entrypoint.sh" ]`
# by
# - ENTRYPOINT ["sleep", "infinity"]

# Contents of entrypoint.sh (inlined)
RUN echo "Current path..." && \
    pwd && \
    echo "Initialize julia..." && \
    julia --project=.@ -e 'using Pkg; Pkg.instantiate();' && \
    echo "julia pkg status:" && \
    julia --project=@. -e 'using Pkg; Pkg.status()'

# Set the entrypoint to an empty array to ensure the script runs as expected
ENTRYPOINT ["sleep", "infinity"]

# Referring: https://github.com/dmnemec/copy_file_to_another_repo_action