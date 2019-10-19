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
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Nama Depan</label>
                                                <input type="text" class="form-control"/>
                                            </div>
                                            <div class="col-md-6">
                                                <label>Nama Belakang</label>
                                                <input type="text" class="form-control"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Jenis Kelamin</label>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input type="radio" name="gender" checked/>
                                                <label>Perempuan</label>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="radio" name="gender"/>
                                                <label>Laki-laki</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input type="text" class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Provinsi</label>
                                        <select class="form-control">
                                            <option>Pilih Provinsi</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Kota</label>
                                        <select class="form-control">
                                            <option>Pilih Kota</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Kode Pos</label>
                                        <input type="text" class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Telp.</label>
                                        <input type="text" class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Alamat Pengiriman</label>
                                        <textarea class="form-control"></textarea>
                                    </div>
                                </div>
                            </div>
                            <h4>Account:</h4>
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label>Password Baru</label>
                                        <input type="text" class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Konfirmasi Password</label>
                                        <input type="text" class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit"value="Update" class="btn btn-success form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit"value="Cancel" class="btn btn-warning form-control"/>
                                    </div>
                                </div>
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