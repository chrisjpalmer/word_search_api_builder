function clone {
    url=$1
    tag=$2
    dir=$3

    git clone --progress --verbose --branch=$tag $url $dir

    cd $dir
    curtag=`git describe --exact-match --tag HEAD`
    if [ $curtag != $tag ]; then
        echo "Repository $dir was meant to be \"$tag\" but is \"$curtag\"."
        exit 1
    fi
    cd ../
}