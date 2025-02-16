<!-- Page Content -->
    <article class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <h3>Member Area</h3>
                    <hr/>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="panel panel-default">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Order ID</th>
                                            <th>Tanggal</th>
                                            <th>Total</th>
                                            <th>Status</th>
                                            <th>&nbsp;</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($order as $order): ?>
                                        <tr>
                                            <td><?php echo $order->kode ?></td>
                                            <td><?php echo ind_date($order->tanggal) ?></td>
                                            <td>Rp <?php echo number_format($order->total_harga, 0, ',' , '.') ?></td>
                                            <td>
                                                <?php if ($order->status == 1 ):?>
                                                <span class="label label-success">Selesai</span>
                                                <?php else: ?>
                                                <span class="label label-default">Belum bayar.</span>
                                                <?php endif; ?>
                                            </td>
                                            <td><a href="<?php echo site_url('member_area/order_detail/'.$order->kode) ?>">Lihat Rincian <i class="fa fa-angle-double-right"></i></a></td>
                                        </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="list-group">
                                <?php $this->load->view('component/member_area_nav'); ?>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
        <!-- /.container -->
    </article>