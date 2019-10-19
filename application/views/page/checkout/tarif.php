 <!-- Page Content -->
    <article class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <h3>Checkout</h3>
                    <hr/>
                    <div class="btn-group btn-group-justified" role="group" aria-label="Justified button group">
                        <a href="#" class="btn btn-default" role="button">Akun Member <i class="fa fa-angle-double-right"></i></a>
                        <a href="#" class="btn btn-default active" role="button">Tarif Pengiriman <i class="fa fa-angle-double-right"></i></a>
                        <a href="<?php echo site_url('ringkasan') ?>" class="btn btn-default" role="button">Ringkasan Belanja <i class="fa fa-angle-double-right"></i></a>
                    </div>
                    <br/>
                    <div class="row">
                        <div class="col-md-5">
                            <h4>Pilih Kota</h4>
                            <div class="panel panel-default">
                                <div class="panel-body">

                                    <?php if (validation_errors()): ?>
                                        <ul class="alert alert-danger">
                                        <?php echo validation_errors('<li>','</li>') ?>
                                        </ul>
                                    <?php endif; ?>

                                    <?php echo form_open('tarif/cek_tarif') ?>                                    
                                    <div class="form-group">
                                    <label>Kota Asal</label>
                                    <p>Jakarta, DKI Jakarta</p>
                                    </div>
                                    <div class="form-group">
                                        <label>Provinsi Tujuan</label>
                                        <select class="form-control" name="provinsi_tujuan" id="provinsi_tujuan">
                                            <option value="">Pilih Provinsi Tujuan</option>
                                            <?php foreach ($provinsi as $prov): ?>
                                            <option value="<?php echo $prov->provinsi_id?>"><?php echo $prov->provinsi_nama ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Kota Tujuan</label>
                                        <select class="form-control" name="kota_tujuan" id="kota_tujuan">
                                            <option value="">Pilih Kota Tujuan</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="berat">Berat (Gram)</label>
                                        <input type="text" name="berat" id="berat" class="form-control" value=""/>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" class="form-control btn btn-success" value="Cek Tarif"/>
                                    </div>
                                    <?php echo form_close(); ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <h4>Pilih Tarif</h4>
                            <?php if($this->session->userdata('tarif_id')): ?>
                            <!-- <?php print_r($_SESSION) ?>  -->  
                            <?php echo form_open('tarif/submit_tarif'); ?>                       
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="alert-info">
                                        <ul>
                                            <li>Dari: <?php echo $kota_asal. ', ' .$provinsi_asal ?></li>
                                            <li>ke: <?php echo $kota_tujuan. ', ' .$provinsi_tujuan ?></li>
                                            <li>berat: <?php echo $this->session->userdata('berat'); ?> (Gram)</li>
                                        </ul>
                                    </div>
                                    <?php if($this->session->userdata('tarif_id')): ?>
                                    <div class="panel panel-default">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>Pilih</th>
                                                    <th>Paket</th>
                                                    <th>Tarif</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php if($tarif->reg != ''): ?>
                                                <tr>
                                                    <td><input type="radio" name="paket" value="reg" checked/></td>
                                                    <td>Reg</td>
                                                    <td>Rp <?php echo number_format($this->M_Tarif->akumulasi($tarif->reg), 0, ',', '.') ?></td>
                                                </tr>
                                                <?php endif; ?>
                                                <?php if($tarif->oke != ''): ?>
                                                <tr>
                                                    <td><input type="radio" value="oke" name="paket"/></td>
                                                    <td>Oke</td>
                                                    <td>Rp <?php echo number_format($this->M_Tarif->akumulasi($tarif->oke), 0, ',','.') ?></td>
                                                </tr>  
                                                <?php endif; ?>
                                                <?php if($tarif->yes != ''): ?>
                                                <tr>
                                                    <td><input type="radio" value="yes" name="paket"/></td>
                                                    <td>Yes</td>
                                                    <td>Rp <?php echo number_format($this->M_Tarif->akumulasi($tarif->yes), 0, ',','.') ?></td>
                                                </tr>  
                                                <?php endif; ?>                           
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" class="form-control btn btn-primary" value="Pilih Tarif"/>
                                    </div>
                                <?php echo form_close() ?>
                                <?php else: ?>
                                    <p>Silahkan tentukan kota anda.</p>
                                <?php endif; ?>
                                </div>
                            </div>
                            <?php else: ?>
                                <p>Silahkan tentukan kota tujuan pengiriman anda</p>
                            <?php endif; ?>
<!--                             <pre>
                                <?php print_r($_SESSION)  ?>
                            </pre> -->
                        </div>
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
        <!-- /.container -->
    </article>