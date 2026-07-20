import os
import glob

def fix_file(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    if 'Ã' in content:
        print(f"Fixing {filepath}")
        content = content.replace('Ã¤', 'ä')
        content = content.replace('Ã¶', 'ö')
        content = content.replace('Ã¼', 'ü')
        content = content.replace('Ã„', 'Ä')
        content = content.replace('Ã–', 'Ö')
        content = content.replace('Ãœ', 'Ü')
        content = content.replace('ÃŸ', 'ß')
        # Also there's something like "Ã" alone maybe?
        
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)

for ext in ('*.tex', 'content/*.tex', 'ads/*.tex'):
    for filepath in glob.glob(ext):
        fix_file(filepath)
print("Done")
