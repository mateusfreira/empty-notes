title="$1"
todayDate=$(date "+%Y-%m-%d")
if [ -z "$title" ]; then 
    echo "Title is  empty";
    exit 1;
fi
file_name=$(echo $title | awk '{tolower(gsub(" ", "-", $0)); print;}' | awk '{print tolower($0)}')
sed "s/\$title/$title/" problems/draft_base.md > problems/$todayDate-$file_name.md
echo problems/$todayDate-$file_name.md

