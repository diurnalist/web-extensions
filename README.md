# Web extensions

This is a collection of some browser extensions I've developed for fun. Each extension is organized in its own subfolder.

<!-- BEGIN INVENTORY -->

**[AtticGreek.org Additions](./atticgreek_additions)**: Some additions to the AtticGreek.org learning site.

**[Royal Flush](./royalflush)**: Automatically removes unimportant information concerning monarchies from most news agencies.

<!-- END INVENTORY -->

## Developing extensions

Use the `scripts/new-extension.sh` script to create a new boilerplate extension, based on the current contents of the `template/` directory.

To install dependencies and run package tasks, use the `scripts/run.sh` run helper. This script will enable you to develop within a containerized Node environment.

```
# Run `npm install` in the `my_package` directory
./scripts/run.sh my_package npm install

# Get an interactive shell in the `my_package` directory
./scripts/run.sh my_package bash
```
