<?php

namespace App\Controllers;

use App\Models\GalleryModel;

class Gallery extends BaseController
{
	protected $galleryModel;

	public function __construct()
	{
		$this->galleryModel = new GalleryModel();
	}

	public function index()
	{
		// $gallery = $this->galleryModel->findAll();

		$data = [
			'title' => 'Gallery',
			'gallery' => $this->galleryModel->getGallery()
		];

		return view('gallery/index', $data);
	}

	public function detail($slug)
	{
		$data = [
			'title' => 'Detail Tempat',
			'gallery' => $this->galleryModel->getGallery($slug)
		];

		if (empty($data['gallery'])) {
			throw new \CodeIgniter\Exceptions\PageNotFoundException('Nama Tempat ' . $slug . ' tidak ditemukan');
		}

		return view('gallery/detail', $data);
	}

	public function create()
	{
		$data = [
			'title' => 'Tambah Data',
			'validation' => \Config\Services::validation()
		];

		return view('gallery/create', $data);
	}

	public function save()
	{
		$rule_nama = 'required|is_unique[gallery.nama_tempat]';
		$rule_des = 'required';
		$rule_sampul = 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]';
		//validasi input
		if (!$this->validate([
			'nama_tempat' => [
				'rules' => $rule_nama,
				'errors' => [
					'required' => 'Nama tempat wajib di isi.',
					'is_unique' => 'Nama tempat {field} sudah terdaftar'
				]
			],
			'deskripsi' => [
				'rules' => $rule_des,
				'errors' => [
					'required' => 'Deskripsi wajib di isi.'
				]
			],
			'sampul' => [
				'rules' => $rule_sampul,
				'errors' => [
					'max_size' => 'Maksimum ukuran file 1 MB',
					'is_image' => 'Format file harus gambar',
					'mime_in' => 'Format file harus gambar'
				]
			]
		])) {
			return redirect()->to('/gallery/create/')->withInput();
		}

		//ambil gambar
		$fileSampul = $this->request->getFile('sampul');
		//cek gambar
		if ($fileSampul->getError() == 4) {
			$namaSampul = 'default.jpg';
		} else {
			//generate nama acak
			$namaSampul = $fileSampul->getRandomName();
			//pindah gambar ke folder img
			$fileSampul->move('img', $namaSampul);
		}




		$slug = url_title($this->request->getVar('nama_tempat'), '-', 'true');
		$this->galleryModel->save([
			'nama_tempat' => $this->request->getVar('nama_tempat'),
			'slug' => $slug,
			'deskripsi' => $this->request->getVar('deskripsi'),
			'sampul' => $namaSampul
		]);

		session()->setFlashdata('pesan', 'Data berhasil ditambahkan.');

		return redirect()->to('/gallery');
	}

	public function delete($id)
	{
		//cari nama gambar
		$gallery = $this->galleryModel->find($id);
		//jika file gambar default
		if ($gallery['sampul'] != 'default.jpg') {
			//hapus gambar
			unlink('img/' . $gallery['sampul']);
		}


		$this->galleryModel->delete($id);
		session()->setFlashdata('pesan', 'Data berhasil dihapus.');
		return redirect()->to('/gallery');
	}

	public function edit($slug)
	{
		$data = [
			'title' => 'Edit Data',
			'validation' => \Config\Services::validation(),
			'gallery' => $this->galleryModel->getGallery($slug)
		];

		return view('gallery/edit', $data);
	}

	public function update($id)
	{
		//cek nama tempat
		$gallerylama = $this->galleryModel->getGallery($this->request->getVar('slug'));
		if ($gallerylama['nama_tempat'] == $this->request->getVar('nama_tempat')) {
			$rule_nama = 'required';
		} else {
			$rule_nama = 'required|is_unique[gallery.nama_tempat]';
		}

		//validasi input
		if (!$this->validate([
			'nama_tempat' => [
				'rules' => $rule_nama,
				'errors' => [
					'required' => '{field} harus diisi',
					'is_unique' => '{field} sudah terdaftar'
				]
			],
			'deskripsi' => [
				'rules' => 'required',
				'errors' => [
					'required' => '{field} tempat harus diisi'
				]
			],
			'sampul' => [
				'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
				'errors' => [
					'max_size' => 'Maksimum ukuran file 1 MB',
					'is_image' => 'Format file harus gambar',
					'mime_in' => 'Format file harus gambar'
				]
			]
		])) {
			return redirect()->to('/gallery/edit/' . $this->request->getVar('slug'))->withInput();
		}

		//ambil gambar
		$fileSampul = $this->request->getFile('sampul');
		//cek gambar apakah sama
		if ($fileSampul->getError() == 4) {
			$namaSampul = $this->request->getVar('sampulLama');
		} else {
			//generate nama acak
			$namaSampul = $fileSampul->getRandomName();
			//pindah gambar ke folder img
			$fileSampul->move('img', $namaSampul);
			//hapus file lama
			unlink('img/' . $this->request->getVar('sampulLama'));
		}

		$slug = url_title($this->request->getVar('nama_tempat'), '-', 'true');
		$this->galleryModel->save([
			'id' => $id,
			'nama_tempat' => $this->request->getVar('nama_tempat'),
			'slug' => $slug,
			'deskripsi' => $this->request->getVar('deskripsi'),
			'sampul' => $namaSampul
		]);

		session()->setFlashdata('pesan', 'Data berhasil diubah.');

		return redirect()->to('/gallery');
	}
}
