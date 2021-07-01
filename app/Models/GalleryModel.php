<?php

namespace App\Models;

use CodeIgniter\Model;

class GalleryModel extends Model
{
    protected $table = 'gallery';
    protected $useTimestamps = true;
    protected $allowedFields = ['nama_tempat', 'slug', 'deskripsi', 'sampul'];

    public function getGallery($slug = false)
    {
        if ($slug == false) {
            return $this->findAll();
        }

        return $this->where(['slug' => $slug])->first();
    }
}
