<?php

switch ($_ENV['lang']) {
    case "DE":
        $greeting = "Hallo Welt";
        break;

    case "ES":
        $greeting = "Hola Mundo";
        break;

    case "ENG":
    default:
        $greeting = "Hello, world!";
        break;
}

echo $greeting . PHP_EOL;
