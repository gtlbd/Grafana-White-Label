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
Certainly! The `replace_text.sh` script in the Grafana White Label Customization repository is responsible for replacing specific text strings within Grafana files. This script allows you to customize the textual content in Grafana to match your organization's branding or requirements. Let's break down how this script works in more detail:

### Purpose

The main purpose of `replace_text.sh` is to search for predefined text strings within Grafana files and replace them with custom text strings. This can include changing default branding, labels, or any other text-based content within Grafana.

### How the Script Works

1. **Defining Source and Replacement Text**:
   - In the script, there are variables that define the source text (`source_*`) and the replacement text (`replacement_*`). These variables specify which text strings should be replaced and what they should be replaced with.

2. **Iterating Through Files**:
   - The script then goes through a set of Grafana files to perform the replacement. Specifically, it operates on files located in the `/usr/share/grafana/public/build/` directory. These files typically contain the frontend code and text content that is visible in the Grafana user interface.

3. **Using `sed` for Replacement**:
   - The script utilizes the `sed` command, which is a stream editor for text manipulation. It searches for occurrences of the source text in each file and replaces them with the corresponding replacement text.

4. **Customizable Replacements**:
   - You can customize the `source_*` and `replacement_*` variables to define your own replacement rules. For example, if you want to replace all occurrences of "Grafana" with "Enerzyz," you would set `source_Welcome_text="Grafana"` and `replacement_Welcome_text="Enerzyz"`.

5. **Multiple Replacements**:
   - The script can perform multiple replacements in each file. It iterates through the specified files and replaces all occurrences of the defined source text with the replacement text.

### Example Customizations

Here are some examples of what you can achieve with `replace_text.sh`:

- Change the welcome message from "Welcome to Grafana" to "Welcome to My Dashboard."
- Replace "Grafana" with your organization's name throughout the Grafana interface.
- Customize help text, labels, or any other text-based content in Grafana.

### Use Cases

The `replace_text.sh` script is particularly useful when you want to make global text changes to Grafana without manually editing each file. It simplifies the process of branding Grafana to match your organization's identity.

### Important Considerations

When using `replace_text.sh`, keep the following considerations in mind:

- Make sure to back up your original Grafana files before running this script to ensure you can revert to the default state if needed.
- Test the script in a non-production environment to verify that the replacements work as expected.
- Be cautious when making extensive changes, as they may affect Grafana's functionality or user experience.

Overall, `replace_text.sh` is a powerful tool for customizing Grafana's textual content and branding to align with your organization's needs.

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

