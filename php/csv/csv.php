<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>csv</title>
	<script src="list.js"></script>
</head>
<body>
<?php
$f = fopen("test.csv", "rt") or die("Ошибка!");
for ($i=0; $data=fgetcsv($f,1000,";"); $i++) {
  $num = count($data);
  echo "<h3>Строка номер $i (полей: $num):</h3>";
  for ($c=0; $c<$num; $c++){
    print "[$c]: $data[$c]<br>";
  }
  echo 'old name of pic - '.$data[3].'<br>';
  // readfile('images/.'.$data[3]);
  // rename('images/.'.$data[3], "newname.jpg");
  //readfile('images/pic'.$i.'.jpg');
  $n=$i+1;
  //rename('images/pic'.$n.'.jpg', 'images/npic'.$n.'.jpg');
  //readfile('images/pic'.$i.'jpg');
  fopen("pic1.jpg", "w");
  readfile("pic1.jpg");
  rename("pic1.jpg", "npic1.jpg");
}
fclose($f);
?>