<?php 
$nums = array(3, 4, 5, 6);
$target = 11;

function twoSum($nums, $target) {
    $length = count($nums);

    for ($i = 0; $i < $length; $i++) {
        for ($j = $i + 1; $j < $length; $j++) {
            if ($nums[$i] + $nums[$j] == $target) {
                return [$i, $j];
            }
        }
    }
    return false;
}

$result = twoSum($nums, $target);
if ($result !== false) {
    echo '[' . implode(', ', $result) . ']' . PHP_EOL;
} else {
    echo "No two elements found that sum up to the target." . PHP_EOL;
}
?>
