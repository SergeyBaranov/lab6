<?php
	$link = mysqli_connect("localhost", "root", " ", "rental");

	/* Проверяем соединение */
if (mysqli_connect_errno()) {
    printf("Не удалось подключиться: %s\n", mysqli_connect_error());
    exit();
}

/*SQL запросы*/

$query 