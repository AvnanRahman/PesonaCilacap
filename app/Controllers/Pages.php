<?php

namespace App\Controllers;

class Pages extends BaseController
{
	public function index()
	{
		$data = [
			'title' => 'Pesona Cilacap'
		];
		return view('pages/landing', $data);
	}

	public function about()
	{
		$data = [
			'title' => 'About Me'
		];
		return view('pages/about', $data);
	}
}
