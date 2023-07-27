FROM okatsn/my-quarto-space

ADD entrypoint.sh /entrypoint.sh

# RUN chmod +x /entrypoint.sh
# chmod: changing permissions of '/entrypoint.sh': Operation not permitted
# CHECKPOINT: Last attempt failed. This time, I `git update-index --chmod=+x entrypoint.sh` and commit and push. Refering the 3rd point of https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action#writing-the-action-code


ENTRYPOINT [ "/entrypoint.sh" ]

# Referring: https://github.com/dmnemec/copy_file_to_another_repo_action