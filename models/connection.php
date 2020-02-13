<?php

// this is the db connection syntax

class Connection {
	static public function connect(){
		$link = new PDO("mysql:host=localhost;dbname=cognex-pci", "root", "");

		$link -> exec("set names utf8");

		return $link;
	}
}