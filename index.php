<?php include 'connection.php'?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="css/styless.css">
    <title>Document</title>
    <style>
    
    </style>
</head>
<body>
    <!--header-->
    <?php include 'header.php'?>
   <!--header-->
   <?php include 'swiperofferbanner.php'?>


      <!--category -->
      <?php include 'demo.php'?>

    <!--banner-->
  <div class="offerbanner">
    <img src="image/Screenshot 2024-09-12 161122.png" alt="">
  </div>

  <!--blog--> 
<h2 style="text-align:center; margin-top:40px; font-weight:bold;">Form Our Blog</h2>
<div style="text-align:center;color:red; font-weight:bold;" class="line">_________</div>
<div class="blog">
  <div class="card">
    <img src="image/blog1.jpg" alt="">
    <h6  id="h2">22 July, 2020. Monday</h6>
    <h5>Sed adipiscing ornare.</h5>
    <h6 id="h1"> Continue Reading</h6>
  </div>
  <div class="card">
    <img src="image/blog2.jpg" alt="">
    <h6  id="h2">22 July, 2020. Monday</h6>
    <h5>Sed adipiscing ornare.</h5>
    <h6 id="h1">Continue Reading</h6>
  </div>
  <div class="card">
    <img src="image/blog3.jpg" alt="">
    <h6  id="h2">22 July, 2020. Monday</h6>
    <h5>Sed adipiscing ornare.</h5>
    <h6 id="h1">Continue Reading</h6>
  </div>
</div>

<div class="lines"></div>
<!--subscribe--> 
<?php include 'subscription.php'?>
<br><br><br><br><br>
<!--footer--> 
<?php include 'footer.php'?>
</body>
</html>