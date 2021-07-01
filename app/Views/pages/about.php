<!DOCTYPE html>
<html lang="en">

<head>
    <title>About Me</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/css/animate.css">
    <link rel="stylesheet" href="/css/flexslider.css">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/style.css">
    <!-- Font Awesome JS -->
    <script src="https://kit.fontawesome.com/0919a3a75b.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700" rel="stylesheet">


</head>

<body data-spy="scroll" data-target="#pb-navbar" data-offset="200">

    <!-- Begin Menu -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="/"><img src="/img/logo.png" style="width: 250px; height: 100px;"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="<?= base_url('/'); ?>">Home</a>
                    </li>
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="#">Blog</a>
                    </li> -->
                    <li class="nav-item">
                        <a class="nav-link" href="<?= base_url('gallery'); ?>">Gallery</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?= base_url('pages/about'); ?>">About</a>
                    </li>
                    <!-- Menu admin -->
                    <?php if (in_groups('admin')) : ?>
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url('admin'); ?>">Users</a>
                        </li>
                    <?php endif; ?>
                    <!-- End Menu admin -->
                    <?php if (logged_in()) : ?>
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url('logout'); ?>">Logout</a>
                        </li>
                    <?php else : ?>
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url('login'); ?>">Login</a>
                        </li>
                    <?php endif; ?>
                    <!-- <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    User
                                </a>
                                <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
                                    <li><a class="dropdown-item" href="/login">Login</a></li>
                                    <li><a class="dropdown-item" href="/logout">Logout</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div> -->

                </ul>
            </div>
        </div>
    </nav>

    <!-- End menu -->

    <section class="site-hero" style="background-image: url(/img/afnan.png);" id="section-home" data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="row intro-text align-items-center justify-content-center">
                <div class="col-md-10 text-center pt-5">

                    <h1 class="site-heading site-animate">Hello, I'm <strong class="d-block">Afnan Ngathour Rahman</strong></h1>
                    <strong class="d-block text-white text-uppercase letter-spacing">and this is My Resume</strong>

                </div>
            </div>
        </div>
    </section> <!-- section -->





    <section class="site-section " id="section-resume">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-5">
                    <div class="section-heading text-center">
                        <h2>My <strong>Resume</strong></h2>
                    </div>
                </div>
                <div class="col-md-6">
                    <h2 class="mb-5">Education</h2>
                    <div class="resume-item mb-4">
                        <span class="date"><span class="icon-calendar"></span> 2017 - 2020</span>
                        <h3>Teknik Komputer dan Jaringan</h3>
                        <p>Windows Server. Linux Server. Cisco dan Mikrotik.</p>
                        <span class="school">SMKN 1 Cilacap</span>
                    </div>

                    <div class="resume-item mb-4">
                        <span class="date"><span class="icon-calendar"></span> 2020 - Now</span>
                        <h3>Pendidikan Teknik Informatika</h3>
                        <p>Semester 2</p>
                        <span class="school">Universitas Negeri Yogyakarta</span>
                    </div>

                </div>

                <div class="col-md-6">
                    <h2 class="mb-5">Experience</h2>
                    <div class="resume-item mb-4">
                        <span class="date"><span class="icon-calendar"></span> 2018 </span>
                        <h3>Magang di Akmakom</h3>
                        <p>Networking Support</p>
                        <span class="school">Akmakom</span>
                    </div>

                    <div class="resume-item mb-4">
                        <span class="date"><span class="icon-calendar"></span> 2020</span>
                        <h3>Magang BTech</h3>
                        <p>Remote System Administrator. </p>
                        <span class="school">Boer Technology</span>
                    </div>
                </div>
            </div>
        </div>
    </section> <!-- .section -->

    <section class="site-section " id="section-resume">
        <div class="container">
            <div class="row">

                <div class="col-md-6">
                    <h2 class="mb-5">Achievement</h2>
                    <div class="resume-item mb-4">
                        <span class="date"><span class="icon-calendar"></span> 2019 </span>
                        <h3>LKS IT Network System Administrator</h3>
                        <p>Juara 1 Tingkat Provinsi Jawa Tengah</p>
                        <span class="school">SMKN 1 Cilacap</span>
                    </div>

                    <div class="resume-item mb-4">
                        <span class="date"><span class="icon-calendar"></span> 2019 </span>
                        <h3>LKS IT Network System Administrator</h3>
                        <p>Juara 1 Tingkat Kabupaten Cilacap.</p>
                        <span class="school">SMKN 1 Cilacap</span>
                    </div>

                    <div class="resume-item mb-4">
                        <span class="date"><span class="icon-calendar"></span> 2019 </span>
                        <h3>Networking</h3>
                        <p>Juara 1 Tingkat SMK.</p>
                        <span class="school">AMIKOM</span>
                    </div>

                    <div class="resume-item mb-4">
                        <span class="date"><span class="icon-calendar"></span> 2019 </span>
                        <h3>Networking</h3>
                        <p>Juara 1 Tingkat SMK Se-Indonesia</p>
                        <span class="school">Universitas Muhammadiyah Purwokerto</span>
                    </div>

                </div>

                <div class="col-md-6">
                    <h2 class="mb-5">Organization</h2>
                    <div class="resume-item mb-4">
                        <span class="date"><span class="icon-calendar"></span> 2018</span>
                        <h3>Dewan Ambalan</h3>
                        <p>Pramuka - Seksi Kegiatan</p>
                        <span class="school">SMKN 1 Cilacap</span>
                    </div>

                    <div class="resume-item mb-4">
                        <span class="date"><span class="icon-calendar"></span> 2021 - Present</span>
                        <h3>Himanika</h3>
                        <p>Staf Depertement Penalaran</p>
                        <span class="school">Universitas Negeri Yogyakarta</span>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- .section -->


    <section class="site-section" id="section-about">
        <div class="container">
            <div class="row mb-5 align-items-center">
                <div class="col-lg-7 pr-lg-5 mb-5 mb-lg-0">
                    <img src="/img/imageafnan.jpg" alt="Image placeholder" class="img-fluid">
                </div>
                <div class="col-lg-5 pl-lg-5">
                    <div class="section-heading">
                        <h2> <strong>About Me</strong></h2>
                    </div>
                    <p class="lead" style="text-align: justify;">Nama saya Afnan Ngathour Rahman, biasa dipanggil Afnan. Saya adalah seorang mahasiswa semester 2 di Universitas Negeri Yogyakarta PRODI Pendidikan Teknik Informatika.</p>
                    <p class="mb-5" style="text-align: justify;">Sejak kelas 2 SMK, saya mulai mendalami IT terutama dibidang Jaringan dan System Administrator. Berkat dukungan dari orang tua, guru dan teman-teman saya dapat menjuarai beberapa lomba dibidang IT.</p>

                    <p>
                        <a href="#section-contact" class="btn btn-primary px-4 py-2 btn-sm smoothscroll">Hire Me</a>
                        <a href="/Afnan Ngathour Rahman-CV.pdf" class="btn btn-secondary px-4 py-2 btn-sm">Download CV</a>
                    </p>
                </div>
            </div>


        </div>
    </section>

    <!-- Footer -->
    <div class="pt-5 pb-5 footer">
        <div class="container blue">
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
    <script src="js/vendor/jquery.min.js"></script>
    <script src="js/vendor/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/vendor/popper.min.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>

    <script src="js/vendor/jquery.easing.1.3.js"></script>

    <script src="js/vendor/jquery.stellar.min.js"></script>
    <script src="js/vendor/jquery.waypoints.min.js"></script>

    <script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
    <script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>