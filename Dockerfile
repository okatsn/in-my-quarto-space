FROM okatsn/my-quarto-space

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

# Referring: https://github.com/dmnemec/copy_file_to_another_repo_action