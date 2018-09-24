# extract Links from https://gitter.im/symphonycms/symphony-2/archives/ HTML Document
sed -n 's/.*href="\([^"]*\).*/\1/p' gitter.html > gitter.sh

# BBEDit, cleanup and Search/Replace:
# Find: (/symphonycms/symphony-2/archives)/(\d\d\d\d)/(\d\d)/(\d\d)
# Replace: curl -o "\2-\3-\4.html" "https://gitter.im\1/\2/\3/\4"

# CURRENTLY MOST RECENT ITEM /2018/09/24

# converted to md html2text w/ github.com/Alir3z4/html2text –> pip install html2text
find ./ -iname "*.html" -type f -exec sh -c 'html2text "${0}" > "../md/${0%.html}.md"' {} \;
