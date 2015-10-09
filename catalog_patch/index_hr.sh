if grep -n isCustom app/elements/pages/page-packages.html; then
    echo 'hr - patched'
else
    echo 'hr - patching app/elements/pages/page-packages.html'
    printf `grep -n 'package-tile>' app/elements/pages/page-packages.html | awk -F: '{print($1)}'` > n

    # remove some lines near package-tile el
    N=`cat n`; sed "$((${N}-2)),$((${N}+2))d;" -i app/elements/pages/page-packages.html
    # replace
    sed -e '/<div class="content fit">/ {' -e 'r page-packages.patch' -e 'd' -e '}' -i app/elements/pages/page-packages.html
    sed -i 's#_packageLink: function(name)#    _isCustom: function(custom) { if (custom=="true") { return true; } else { return false; } },\n    _isCustomOff: function(custom) { if (custom) { return false; } else { return true; } },\n    _packageLink: function(name)#' app/elements/pages/page-packages.html
    rm n
fi

