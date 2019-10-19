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
                                    <tbody>
                                        <tr>
                                            <td>Nama Depan:</td><td>Reza</td>
                                        </tr>
                                        <tr>
                                            <td>Nama Belakang:</td><td>Indra</td>
                                        </tr>
                                        <tr>
                                            <td>Email:</td><td>reza.dumet@gmail.com</td>
                                        </tr>
                                        <tr>
                                            <td>Jenis Kelamin:</td><td>Laki-laki</td>
                                        </tr>
                                        <tr>
                                            <td>Telp:</td><td>081 234 334 666</td>
                                        </tr>
                                        <tr>
                                            <td>Provinsi:</td><td>DKI Jakarta</td>
                                        </tr>
                                        <tr>
                                            <td>Kota:</td><td>Jakarta Barat</td>
                                        </tr>
                                        <tr>
                                            <td>Kode Pos:</td><td>11445</td>
                                        </tr>
                                        <tr>
                                            <td>Alamat Pengiriman:</td><td>Ruko Jalan Taman Daan Mogot Raya No. 23 Kel. Tanjung Duren Utara Kec. Grogol Petamburan, Jakarta Barat 11470 (Belakang Mall Citraland dan Kampus UNTAR II)</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><a href="<?php echo site_url('member_area/edit_profile') ?>" class="btn btn-success btn-xs">Edit Profile</a></td>
                                        </tr>
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