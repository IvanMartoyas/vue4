declare function oda:child($group, $oid) {
    $group[@p = $oid]
};

declare function oda:transform($group) {
    for $item in $group
    let $child := oda:child($group, $item/@oid)
    return element group {
        attribute name { $item/@SectionName },
        attribute value { $item/@oid },
        if ($child) then oda:transform($child) else ()
      }
};

let $parents := */O,
$group := oda:transform($parents)
return $group[fn:exists(group)]