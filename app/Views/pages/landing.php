   <?= $this->extend('layout/template'); ?>

   <?= $this->section('content'); ?>

   <!-- Begin section -->
   <section class="site-hero" style="background-image: url(img/2.jpg);" id="section-home" data-stellar-background-ratio="0.5">
       <div class="container">
           <div class="row intro-text align-items-center justify-content-center">
               <div class="col-md-10 text-center pt-5">

                   <h1 class="site-heading site-animate"><strong class="d-block">Pesona Wisata Daerah Kabupaten Cilacap</strong></h1>
                   <br>
                   <h3>
                       <strong class="d-block text-white text-uppercase letter-spacing">Silahkan Scrool kebawah</strong>
                   </h3>
               </div>
           </div>
       </div>
   </section>


   <!-- End section -->



   <!-- Start slideshow -->
   <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-bs-ride="carousel">
       <div class="carousel-indicators">
           <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
           <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
           <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
       </div>
       <div class="carousel-inner">
           <div class="carousel-item active">
               <img src="img/1.jpg" class="d-block w-100" alt="slide1">
               <div class="carousel-caption d-none d-md-block">
                   <h5>Gunung Selok</h5>
                   <p>Terdapat Jamber 5 dan Jambe 7.</p>
               </div>
           </div>
           <div class="carousel-item">
               <img src="img/2.jpg" class="d-block w-100" alt="slide2">
               <div class="carousel-caption d-none d-md-block">
                   <h5>Alun-alun Cilacap</h5>
                   <p>Tempat bermain.</p>
               </div>
           </div>
           <div class="carousel-item">
               <img src="img/3.jpg" class="d-block w-100" alt="slide3">
               <div class="carousel-caption d-none d-md-block">
                   <h5>Nusakambangan</h5>
                   <p>Terdapat pantai pasir putih.</p>
               </div>
           </div>
       </div>
       <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
           <span class="carousel-control-prev-icon" aria-hidden="true"></span>
           <span class="visually-hidden">Previous</span>
       </button>
       <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
           <span class="carousel-control-next-icon" aria-hidden="true"></span>
           <span class="visually-hidden">Next</span>
       </button>
   </div>
   <!-- End Slide Show -->


   <!-- Footer -->
   <div class="pt-5 pb-5 footer">
       <div class="container">
           <div class="row">
               <div class="col-lg-5 col-xs-12 about-company">
                   <h2>Pesona Cilacap</h2>
                   <p class="pr-5 text-white-50">Adalah sebuah website yang menampilkan daftar tempat wisata di Cilacap. Diharapkan dengan adanya website ini masyarakat umum dapat melihat pesona dari Kabupaten Cilacap dari segi pariwisata. </p>
                   <p>
                       <a href="https://web.facebook.com/afnanngathourrahman/"><i class="fa fa-facebook-square fa-3x mr-1"></i></a>
                       <a href="https://www.linkedin.com/in/afnanngathourrahman/"><i class="fa fa-linkedin-square fa-3x"></i></a>
                   </p>
               </div>
               <div class="col-lg-3 col-xs-12 links">

               </div>
               <div class="col-lg-4 col-xs-12 location">
                   <h4 class="mt-lg-0 mt-sm-4">Alamat</h4>
                   <p>Karangbenda, Adipala, Cilacap, Jawa tengah.</p>
                   <p><i class="fa fa-phone mr-3"></i>+62 85726788575</p>
                   <p><i class="fa fa-envelope-o mr-3"></i>avnanrahman@gmail.com</p>
                   <p><i class="fa fa-university mr-3"></i>Universitas Negeri Yogyakarta</p>

               </div>
           </div>
           <div class="row mt-5">
               <div class="col copyright">
                   <p class=""><small class="text-white-50">© 2021. All Rights Reserved.</small></p>
               </div>
           </div>
       </div>
   </div>
   <!-- End Footer -->
   <?= $this->endSection(); ?>