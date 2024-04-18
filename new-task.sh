title="$1"
todayDate=$(date "+%Y-%m-%d")
if [ -z "$title" ]; then 
    echo "Title is  empty";
    exit 1;
fi
file_name=$(echo $title | awk '{gsub(" ", "-", $0); print;}' | awk '{print $0}')
sed "s/\$title/$title/" tasks/draft_base.md > tasks/$todayDate-$file_name.md
echo tasks/$todayDate-$file_name.md

