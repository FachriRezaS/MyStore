<?php 
	$this->load->view('component/header'); 
	$this->load->view('component/menu');
	$this->load->view($content);
	$this->load->view('component/footer');
?>