<?php

function radio(string $name, string $value):string{
    $attribute = '';
    if (isset($_GET[$name]) && $value === $_GET[$name]){
       $attribute .= 'checked';
    }
    
    return <<<HTML
    <input type="radio" class="form-check-input" name="$name" value="$value" $attribute>
HTML;
}
?>