todayDate=$(date "+%Y-%m-%d")

file_name=$(echo $title | awk '{tolower(gsub(" ", "-", $0)); print;}' | awk '{print tolower($0)}')
sed "s/\$title/$title/" days/draft_base.md > days/$todayDate.md
echo days/$todayDate.md

