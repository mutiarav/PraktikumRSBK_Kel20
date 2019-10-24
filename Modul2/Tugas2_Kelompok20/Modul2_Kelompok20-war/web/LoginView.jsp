<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Tahun Depan Wisuda</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <style>
        input[type=text], select {
          width: 200px;
          padding: 12px 20px;
          margin: 8px 0;
          display: inline-block;
          border: 1px solid #ccc;
          border-radius: 4px;
          box-sizing: border-box;
        }

        div {
          width: 500px;
          border-radius: 5px;
          background-color: #f2f2f2;
          padding: 20px;
          margin: auto;
          border: 2px solid red;
          border-radius: 4px;
        }
  </style>
  <body style="background-color:papayawhip">
    <header>
      <h1 style="text-align:center">SEMANGAT! Salam dari kelompok 20.</h1>
    </header>
    <main style="display:flex;justify-content:center;flex-direction: column;">
        <% String stat = (String)request.getAttribute("status");
            if(stat != "true"){%>
            <div>
                <form action="Login" method="post" style="display:flex;justify-content:center;flex-direction: column;align-items: center;">
                    <label for="nama" style="margin-bottom:5px">Nama Mahasiswa</label>
                    <input id="nama" type="text" name="nama" placeholder="Nama Mahasiswa">
                    <span style="color:red">${namaEr}</span>
                    <br>
                    <label for="nim" style="margin-bottom:5px">NIM Mahasiswa</label>
                    <input id="nim" type="text" name="nim" placeholder="Nim Mahasiswa">
                    <span style="color:red">${nimEr}</span>
                    <span style="color:red">${userEr}</span>
                    <br>
                    <input type="submit" name="submit" value="Cari" style="width:150px" class="btn btn-success">
                </form>
            </div>
            <%} else {%>
            <div>
                <form action="Login" method="get" style="display:flex;justify-content:center;flex-direction: column;align-items: center;">
                    <label for="namasearch" style="margin-bottom:5px">Nama/NIM</label>
                    <input id="namasearch" type="text" name="namasearch" placeholder="Nama/NIM">
                    <span style="color:black">${hasil}</span>
                    <br>
                    <input type="submit" name="keluar" value="Search" style="width:150px" class="btn btn-success">
                    <br>
                </form>
                <form action="Login" method="get" style="display:flex;justify-content:center;flex-direction: column;align-items: center;">
                    <input type="submit" name="keluar" value="Back" style="width:150px" class="btn btn-danger">
                </form>
            </div>
            <%}%>
    </main><br>
    <footer style="text-align:center">&copy; Semoga ini langkah awal untuk lulus, Aamiin.</footer>
  </body>
</html>
