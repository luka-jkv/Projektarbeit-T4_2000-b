# T4_2000_a_TINF24B3_Luka_Jakovleski - Project Work

This repository contains the LaTeX source files for my T4_2000 A project work. The goal is to develop a software-kiosk, which allows users to maintain und install their software more easily without having access to the bitbucket repository.

## Project Overview

- **Thesis Topic:** Implementierung einer BLE-Advertisement-Funktion für einen Shelly-Smart-Stecker zur drahtlosen Statusüberwachung
- **Main Sections:**
    - Einleitung
    - 

## Structure

- `dokumentation.tex` - Main LaTeX document
- `content/` - LaTeX documents for each chapter
- `images/` - Figures and diagrams
- `README` - Project overview and instructions

## How to Build

To compile the thesis, use a LaTeX editor or run:



```bash
pdflatex dokumentation.tex
```

## Usage Instructions

1. **Clone the repository:**
    ```bash
    git clone https://github.com/luka-jkv/Projektarbeit-T4_2000-a.git
    ```

2. **Add or modify content:**
    - Edit `dokumentation.tex` for main content.
    - Edit the files in `content/` to change the content of the related chapter
    - Place images in the `images/` directory.
    - Update or add scripts in the `scripts/` directory.

3. **Compile the thesis:**
    - Run `pdflatex dokumentation.tex` in the project root.
    - Repeat if references or table of contents need updating.

4. **View the output:**
    - The compiled PDF will be named `dokumentation.pdf` in the project directory.

## Requirements

- LaTeX distribution (e.g., TeX Live, MiKTeX)
- Optional: LaTeX editor (e.g., TeXstudio, Overleaf, VS Code)
