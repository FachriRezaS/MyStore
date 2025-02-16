   <article class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <h3>Checkout</h3>
                    <hr/>
                    <div class="btn-group btn-group-justified" role="group" aria-label="Justified button group">
                        <a href="#" class="btn btn-default active" role="button">Akun Member <i class="fa fa-angle-double-right"></i></a>
                        <a href="#" class="btn btn-default" role="button">Tarif Pengiriman <i class="fa fa-angle-double-right"></i></a>
                        <a href="#" class="btn btn-default" role="button">Ringkasan Belanja <i class="fa fa-angle-double-right"></i></a>
                    </div>
                    <br/>
                    <?php if (validation_errors()):?>
                        <ul class="alert alert-danger">
                            <?= validation_errors('<li>', '</li>') ?>
                        </ul>
                    <?php endif; ?>
                    <div class="row">
                        <?php echo form_open() ?>
                        <div class="col-md-6">
                            <h4>Member Data</h4>
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Nama Depan</label>
                                                <input name="nama_depan" type="text" class="form-control"/>
                                            </div>
                                            <div class="col-md-6">
                                                <label>Nama Belakang</label>
                                                <input name="nama_belakang" type="text" class="form-control"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Jenis Kelamin</label>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input type="radio" name="jenis_kelamin" value="0" checked/>
                                                <label>Perempuan</label>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="radio" name="jenis_kelamin" value="1" />
                                                <label>Laki-laki</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Tanggal Lahir</label>
                                        <p class="tanggal_lahir">
                                            <select name="tanggal" class="form-control">
                                                <?php for($date = 1; $date <= 31; $date++): ?>
                                                <option value="<?php echo $date ?>"><?php echo $date ?></option>
                                                <?php endfor; ?>
                                            </select>
                                            <select name="bulan" class="form-control">
                                                <?php for($month = 1; $month <= 12; $month++): ?>
                                                <option value="<?php echo $month ?>"><?php echo month_name($month) ?></option>
                                                <?php endfor; ?>
                                            </select>
                                            <select name="tahun" class="form-control" style="float: none;">
                                                <?php for($year =  date('Y'); $year >= 1950 ; $year--): ?>
                                                <option value="<?php echo $year ?>"><?php echo $year?></option>
                                                <?php endfor; ?>                            
                                            </select>
                                        </p>
                                    </div>
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input name="email" type="text" class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Provinsi</label>
                                        <select name="provinsi" id="provinsi" class="form-control">
                                            <option>Pilih Provinsi</option>
                                            <?php foreach ($provinsi as $result):?>
                                                <option value="<?php echo $result->id?>"><?php echo $result->nama_provinsi ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Kota</label>
                                        <select name="kota" id="kota" class="form-control">
                                            <option>Pilih Kota</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Kode Pos</label>
                                        <input name="kode_pos" type="text" class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Telp.</label>
                                        <input name="telpon" type="text" class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Alamat Pengiriman</label>
                                        <textarea name="alamat" class="form-control"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h4>Account:</h4>
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input name="password" type="password" class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Konfirmasi Password</label>
                                        <input name="konfirmasi_password" type="password" class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <input name="register_submit" type="submit"value="Register Now" class="btn btn-primary form-control"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php echo form_close() ?>
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
        <!-- /.container -->
    </article>