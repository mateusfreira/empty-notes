title="$1"
todayDate=$(date "+%Y-%m-%d")
if [ -z "$title" ]; then 
    echo "Title is  empty";
    exit 1;
fi

file_name=$(echo $title | awk '{tolower(gsub(" ", "-", $0)); print;}' | awk '{print tolower($0)}')
sed "s/\$title/$title/" meetings/draft_base.md > meetings/$todayDate-$file_name.md
echo meetings/$todayDate-$file_name.md
