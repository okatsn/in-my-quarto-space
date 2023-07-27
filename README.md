# in-my-quarto-space
I'm trying to create an action that renders `.qmd` file on the DockerHub image `okatsn/my-quarto-space`.
However, this requires both to set secret for every user repo that runs the CI using this action, providing permissions to copy the results back the the user repo, commit and push, which are a lot of effort.
Thus, I terminate the development of this action, and this is substaintially in a useless state. However, notes that might be useful is listed below:

- [Creating a Docker container action](https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action).
- [Example using a public action](https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action#example-using-a-public-action)
- [dmnemec/copy_file_to_another_repo_action](https://github.com/dmnemec/copy_file_to_another_repo_action)