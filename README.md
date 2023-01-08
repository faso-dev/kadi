# Kadi Package Manager

Kadi is a command line tool for managing Python packages. It allows you to easily add, update, upgrade, and remove packages, as well as install all packages listed in the `requirements.txt` file.

## Installation

To install Kadi using the install.sh script, follow these steps:
Make sure you have Git and Python with pip installed on your computer. If not, you can download Git from the official website: https://git-scm.com/downloads and download Python from the following URL: https://www.python.org/downloads/. Then, install pip using the following command:

```shell
python -m ensurepip --upgrade
```
Open a terminal and navigate to the directory where you want to install Kadi.
Run the following command to clone the Kadi repository and install the dependencies:

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/faso-dev/main/install.sh)"
```

The `install.sh` script will clone the Kadi repository, make the kadi.sh script executable, and add it to your PATH environment variable so that it can be run from any directory.
Kadi is now installed and ready to use. You can use it with the commands described in the previous sections of this documentation.

## Usage

Kadi can be used with the following commands:

### Add a new package in your project
Adds the specified package to the `requirements.txt` file. If a version number is provided, it will be added to the file as well. If the package already exists in the `requirements.txt` file, a message will be displayed indicating that the package already exists.

```shell
kadi add [package] [optional version]
```

### Update all packages

Updates all packages listed in the `requirements.txt` file to the latest version. The `requirements.txt` file will also be updated with the new package versions.

```shell
kadi update
```

### Upgrade a package
Upgrades the specified package to the specified version. If the package upgrade is successful, the `requirements.txt` file will be updated with the new package version.

```shell
kadi upgrade [package] [new version]
```
### Remove or uninstall a package

Removes the specified package from the `requirements.txt` file and uninstalls it.

```shell
kadi remove [package]
```

### Install all package listed in the requirement.txt

Installs all packages listed in the `requirements.txt` file.

```shell
kadi install
```

## Example

To add the package `numpy` to the `requirements.txt` file and install it, run the following command:

```shell
kadi add numpy
```


To update all packages to the latest version, run the following command:

```shell
kadi update
```

To upgrade the package `pandas` to version `1.2.3`, run the following command:

```shell
kadi upgrade pandas 1.2.3
```


To remove the package `scipy` and uninstall it, run the following command:

```shell
kadi remove scipy
```

To install all packages listed in the `requirements.txt` file, run the following command:

```shell
kadi install
```

