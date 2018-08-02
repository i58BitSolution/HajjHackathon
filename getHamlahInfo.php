<!DOCTYPE html>
<!-- Fig. 19.16: formDatabase.php -->
<!-- Displaying the MailingList database. -->
<html>
   <head>
      <meta charset = "utf-8">
      <title>Search Results</title>
      <style type = "text/css">
         table  { background-color: lightblue;
                  border: 1px solid gray;
                  border-collapse: collapse; }
         th, td { padding: 2px; border: 1px solid gray; }
         tr:nth-child(even) { background-color: white; }
         tr:first-child { background-color: lightgreen; }

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align:left;
    padding: 4px;
    width: 100%;
}

tr:nth-child(even){background-color: #f2f2f2; width: 100%;}

th {
    background-color: #FFFFFF;
    color: black;
    font-weight: bold;
    width: 100%;
}

      </style>
   </head>
  <body>
      <?php
		 // Connect to MySQL
     $q = $_REQUEST["q"];
		 $conDB = mysqli_connect( "localhost", "root", "" , "Hamlati");

         if ( !$conDB )
            die( "<p>Could not connect to database</p></body></html>" );

         // build SELECT query

			// if($_POST['qurashi']){
			// 	$query = "SELECT * FROM hamlahTable WHERE ID=1";}
      //   else if($_POST['qurashi']){
      //     $query = "SELECT * FROM hamlahTable";
      //   }
      //   else if($_POST['qurashi']){
      //     $query = "SELECT * FROM hamlahTable";
      //   }
      $query = "SELECT * FROM hamlahTable WHERE id = '".$q."'";
      $result = mysqli_query($conDB,$query);

         // query MailingList database
         if ( !( $result = mysqli_query( $conDB, $query ) ) )
         {
            print( "<p>Could not execute query!</p>" );
            die( mysqli_error() . "</body></html>" );

         } // end if
      ?><!-- end PHP script -->

      <h1>More information</h1>
      <table style="margin:4%">

         <tr>
            <th>ID</th>
            <th>Permission Number</th>
            <th>Office Location</th>
            <th>Residence Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Manager Name</th>
            <th>Reception</th>
            <th>Transportation</th>
            <th>Wheel Chair</th>
            <th>Food</th>
            <th>Drinks</th>
            <th>Medical Care</th>
            <th>Deaf Assistant</th>
            <th>Blind Assistant</th>
            <th>Dumb Assistant</th>
            <th>General Assistant</th>
            <th>Programs</th>
            <th>Wheel Chair Assistant</th>
            <th>Others?</th>
         </tr>
         <?php
            // fetch each record in result set
            for ( $counter = 0; $row = mysqli_fetch_row( $result );
               ++$counter )
            {
               // build table to display results
               print( "<tr>" );

               foreach ( $row as $key => $value )

                  print( "<td>$value</td>" );
               print( "</tr>" );
            } // end for

            mysqli_close( $conDB );
         ?><!-- end PHP script -->
      </table>

   </body>
</html>
