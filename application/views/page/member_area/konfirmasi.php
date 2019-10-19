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
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label>Order ID</label>
                                        <input type="text" class="form-control" value="<?php echo $order_id ?>" />
                                    </div>
                                    <div class="form-group">
                                        <label>Rekening Tujuan</label>
                                        <select class="form-control">
                                            <option>Bank BCA: 2029101 A/N xxxx</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>No. Rekening Pengirim</label>
                                        <input type="text" class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Nama Pemegang Rekening</label>
                                        <input type="text" class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Jumlah Nominal Yang Dikirim</label>
                                        <input type="text" class="form-control" placeholder="Sama persis dengan yang anda kirim. Contoh: 45500"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Tanggal Pembayaran</label>
                                        <br>
                                        <select name="date">
                                            <option>01</option>
                                        </select>
                                        <select name="month">
                                            <option>Januari</option>
                                        </select>
                                        <select name="year">
                                            <option>2015</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Konfirmasi" class="form-control btn btn-success"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <?php $this->load->view('component/member_area_nav'); ?>
                        </div>
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
        <!-- /.container -->
    </article>