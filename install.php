<?php
function plugin_version_unixusers()
{
return array('name' => 'unixusers',
'version' => '1.0',
'author'=> 'Yuta Akama',
'license' => 'GPLv2',
'verMinOcs' => '2.2');
}

function plugin_init_unixusers()
{
$object = new plugins;
$object -> add_cd_entry("unixusers","other");

$object -> sql_query("CREATE TABLE IF NOT EXISTS `unixusers` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` INT(11) NOT NULL,
  `NAME` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY  (`ID`,`HARDWARE_ID`)
) ENGINE=INNODB ;");

}

function plugin_delete_unixusers()
{
$object = new plugins;
$object -> del_cd_entry("unixusers");

$object -> sql_query("DROP TABLE `unixusers`;");

}

?>
