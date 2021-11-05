# Backup and Restore

This repository contains scripts for hassle-free backup and restore of your environment configuration. Whenever you add a new tool to your toolset you don't even need to think what files to backup - someone has done all the job already!

## Table of contents

- [Backup and Restore](#backup-and-restore)
  - [Table of contents](#table-of-contents)
  - [Usage](#usage)
    - [How to create your own backup](#how-to-create-your-own-backup)
    - [How to restore from the backup](#how-to-restore-from-the-backup)
    - [How to keep my repository up to date with the template](#how-to-keep-my-repository-up-to-date-with-the-template)
  - [Contribution](#contribution)
  - [License](#license)

## Usage

### How to create your own backup

1. Create your repository using this one as a template.
2. Remove `.gitignore` from your repository.
3. Create `apps.conf` in the root of the repository with the list of apps you would like to backup.
4. Run `backup.sh`.
5. Commit your first backup!

Here is an example of what you would get in the result: https://github.com/aelmekeev/backup.

Example of the `apps.conf` file:

```
brew
git
zsh

```

### How to restore from the backup

Simply run `restore.sh`.

### How to keep my repository up to date with the template

For this you can add template repository to the list of remotes by running:

``` 
git remote add upstream git@github.com:aelmekeev/backup-and-restore.git
```

Once you have this you can anytime merge the latest updates for the scripts including scrips for new apps with:

```
git fetch upstream
git merge upstream/main
```

## Contribution

Your contributions are always welcome! Please have a look at the [contribution guidelines](CONTRIBUTING.md) first.

## License

This project is licensed under the MIT license. Feel free to edit and distribute this template as you like.

Please have a look at the [LICENSE](LICENSE) for more details.