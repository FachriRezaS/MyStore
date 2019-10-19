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
                            <h4 class="no-margin">ID: #<?php echo $order->kode ?></h4>
                            <h4 class="no-margin">Tanggal: <?php echo ind_date($order->tanggal)  ?></h4>
                            <br/>
                            <div class="panel panel-default">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Produk</th>
                                            <th>Sub Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- History Detail -->
                                        <?php foreach ($order_detail as $detail): ?>
                                        <tr>
                                            <td>
                                                <h3 class="no-margin"><a href=""><?php echo $detail->name?></a></h3>
                                                <p class="no-margin"><?php echo $detail->options?></p>
                                                <p class="no-margin"><?php echo $detail->qty?></p>
                                                <p class="no-margin"><?php echo $detail->price?></p>
                                            </td>
                                            <td>
                                                <h5 class="no-margin"><?php echo $detail->sub_total ?></h5>
                                            </td>
                                        </tr>
                                        <?php endforeach; ?>
                                        <!-- History Detail -->
                                        <tr>
                                            <th>Tarif Pegiriman</th>
                                            <th><?php echo $this->M_Tarif->get_tarif_akhir($order->id) ?></th>
                                        </tr>
                                        <tr>
                                            <th><h3 class="no-margin">Total Biaya</h3></th>
                                            <th><h3 class="no-margin"><?php echo $order->total_harga ?></h3></th>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <a href="<?php echo site_url('member_area/konfirmasi/'.$order->kode) ?>" class="btn btn-success btn-xs">Konfirmasi Pembayaran</a>
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