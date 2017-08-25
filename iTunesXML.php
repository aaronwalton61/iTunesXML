<?php
$xmlDoc = new DOMDocument();
$xmlDoc->load("iTunes Library.xml");

$xslDoc = new DOMDocument();
$xslDoc->load("iTunes.xsl");

// Configure the transformer
$proc = new XSLTProcessor;
$proc->importStyleSheet($xslDoc); // attach the xsl rules

echo $proc->transformToXML($xmlDoc);
?> 