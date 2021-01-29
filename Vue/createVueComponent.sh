#!/bin/bash
echo 'Vue Component Creator is Running ...'
read -p "Please Enter Component name (without .vue extension)  followed by Enter: " componentName

while [ -z "$componentName" ]
do
    read -p "Please Enter Component name (without .vue extension)  followed by Enter" componentName
done

output=$(pwd)/${componentName}.vue

# file exist and size of that greather than zero
if [ -s "$output" ]
then
    echo "File in $output Exists And Have Contetn !!!"
else
    content="<template>\n
    <div>\n
    </div>\n
</template>
\n
\n
<script>\n
export default {\n
\n
}\n
</script>\n
\n
<style scoped>\n
</style>\n"

echo -e $content > $output
    # tee $output <<< $content
fi