# Grafana White Label Customization for v-10.0.0

Welcome to the **Grafana White Label Customization** GitHub repository! This repository provides scripts and tools to customize your Grafana instance's appearance and text to match your organization's branding and requirements.

## Repository Overview

### Repository Link

[Grafana White Label Customization Repository](https://github.com/gtlbd/Grafana-White-Label/)

### Included Scripts

#### `setup.sh`

This script is used to set up the initial environment for Grafana customization. It performs the following tasks:

- Creates a backup directory for original Grafana files.
- Backs up the original Grafana public files from `/usr/share/grafana/public/` to the backup directory.
- Stops the Grafana server.
- Executes `create_and_backup.sh` to create a backup of Grafana files.
- Copies custom images (e.g., icons and logos) from the repository to the Grafana public directory.
- Performs custom text replacement using `replace_text.sh`.
- Restarts the Grafana server.

#### `create_and_backup.sh`

This script is responsible for creating a backup of files and directories from the original Grafana public directory to a designated backup directory. It uses `rsync` for efficient backup operations.

#### `replace_text.sh`

The `replace_text.sh` script performs text replacement in Grafana files. It replaces predefined text strings with customized text, allowing you to tailor the text in Grafana to your specific needs.

#### `restore_default.sh`

Use this script to restore default settings and files in Grafana if needed. It performs the following actions:

- Stops the Grafana server.
- Executes `restore.sh` to restore backed-up files to their default locations.
- Restarts the Grafana server.

#### `restore.sh`

The `restore.sh` script is responsible for restoring the original files from the backup directory to their default locations. It uses `rsync` to copy files while displaying progress.

## Getting Started

To customize Grafana using this repository, follow these steps:

1. **Clone the Repository**: Clone this GitHub repository to your local machine using the following command:

   ```bash
   git clone https://github.com/gtlbd/Grafana-White-Label.git
   ```

2. **Customize Configuration**: Open the script files (`setup.sh`, `create_and_backup.sh`, `replace_text.sh`, `restore_default.sh`) in a text editor and review the configuration options. Customize variables, paths, and replacement text as needed to match your branding and requirements.

3. **Execute `setup.sh`**: Run the `setup.sh` script to perform initial setup, backup, customization, and server restart. Use the following command:

   ```bash
   bash setup.sh
   ```

4. **Optional: Restore Defaults**: If necessary, use the `restore_default.sh` script to revert to default settings or files. Execute the script as follows:

   ```bash
   bash restore_default.sh
   ```

5. **Customize Repository Contents**: Customize the repository contents, such as images and text, to align with your Grafana customization needs.

