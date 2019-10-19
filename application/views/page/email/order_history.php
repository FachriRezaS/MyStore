<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Pesanan Anda: </title>
	<link rel="stylesheet" href="">
</head>
<body>
	<strong>Hi, <?php echo $this->session->userdata('nama'); ?></strong><br>

	<!-- detail order -->
	<table>
		<tr>
			<th colspan="" rowspan="" headers="" scope="">Nama Item</th>
			<th colspan="" rowspan="" headers="" scope="">Color</th>
			<th colspan="" rowspan="" headers="" scope="">Harga</th>
			<th colspan="" rowspan="" headers="" scope="">Kuantitas</th>
			<th colspan="" rowspan="" headers="" scope="">Subtotal</th>
		</tr>
		<?php foreach($this->cart->contents() as $item):?>
		<tr>
			<td><?php echo $item['name'] ?></td>
			<td><?php echo $item['options']['color'] ?></td>
			<td><?php echo $item['price'] ?></td>
			<td><?php echo $item['qty'] ?></td>
			<td><?php echo $item['subtotal'] ?></td>
		</tr>
		<?php endforeach; ?>
	</table>

	<p><a href="<?php echo site_url('member/konfirmasi_pembayaran') ?>">Konfirmasi Pembayaran</a></p>
</body>
</html>