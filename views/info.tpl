º<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Resultado</title>
  
  
  
      <link rel="stylesheet" href="views/css/style2.css">
<style>
th   {color: powderblue;}
td   {color: white;}

table, 
th, td {
    padding: 5px;
    text-align: left;
}
table#t01 {
    width: 100%;    
    bgcolor: #0000
   ;
}
</style>

  
</head>

<body>
<h1>Tablas Disponibles</h1>
<table class="u-full-width">
  <thead>
    <tr>
      <th>Nombre</th>
    </tr>
  </thead>
  <tbody>

   % for n in zip(nombre,nombrecircuito,pais): 

    <tr>
      <td>{{n}}</td>
    </tr>
    % end
  </tbody>
</table>
</body>
</html>



