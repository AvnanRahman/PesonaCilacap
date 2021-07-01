<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col">
            <?php if (session()->getFlashdata('pesan')) : ?>
                <div class="alert alert-success" role="alert">
                    <?= session()->getFlashdata('pesan'); ?>
                </div>
            <?php endif; ?>
            <h1 class="mt-2">Daftar Tempat Wisata</h1>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Gambar</th>
                        <th scope="col">Tempat Wisata</th>
                        <!-- <th scope="col">Deskripsi</th> -->
                        <th scope="col">Info</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($gallery as $g) : ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><img src="img/<?= $g['sampul']; ?>" alt="" class="sampul"></td>
                            <td><?= $g['nama_tempat']; ?></td>
                            <!-- <td><?= $g['deskripsi']; ?></td> -->
                            <td>
                                <a href="/gallery/<?= $g['slug']; ?>" class="btn btn-success">Detail</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <div class="col-md-12 text-center">
                <a href="/gallery/create" class="btn btn-primary mt-3 mb-3">Tambah Tempat Wisata</a>
            </div>
        </div>
    </div>
</div>



<?= $this->endSection(); ?>