<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><?= $gallery['nama_tempat']; ?></h5>
                    <p class="card-text"><?= $gallery['deskripsi']; ?></p>
                    <!-- <div class="col-md-12 "> -->

                    <div class="position-relative">

                        <small><a href="<?= base_url('gallery'); ?>" class="btn btn-primary position-absolute top-0 start-0 mb-3 ms-3">Kembali ke gallery</a></small>

                        <!-- Hanya untuk anggota grup Guide -->
                        <?php if (in_groups('guide') || in_groups('admin')) : ?>
                            <a href="/gallery/edit/<?= $gallery['slug']; ?>" class="btn btn-warning d-inline mb-3 ms-3 position-absolute top-0 end-50 ">Edit</a>
                            <br>
                            <br>

                            <form action="/gallery/<?= $gallery['id']; ?>" method="post" class="d-inline">
                                <?= csrf_field(); ?>
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="btn btn-danger mb-3 ms-3 position-absolute top-0 end-0" onclick="return confirm('Apakah anda yakin?');">Hapus</button>
                            </form>
                        <?php endif; ?>
                        <!-- End Hanya untuk anggota grup Guide -->

                    </div>
                    <!-- </div> -->
                    <!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
                </div>
                <img src="/img/<?= $gallery['sampul']; ?>" class="card-img-bottom mb-3 mt-5" alt="...">
            </div>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>