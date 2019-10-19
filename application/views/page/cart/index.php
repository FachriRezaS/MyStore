    <article class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <h3>Shopping Cart</h3>
                    <hr/>
                    <?php  if ($this->session->flashdata('success')) echo $this->session->flashdata('success') ?>
                    <?php if($items): ?>
                    <div class="row">
                        <div class="col-md-8">                            
                            <div class="panel panel-default">
                                <?php echo form_open('cart/update'); ?>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>&nbsp;</th>
                                            <th>Product</th>
                                            <th>Qty</th>
                                            <th>Price</th>
                                            <th>Sub Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>                                        
                                        <?php foreach ($items as $item): ?>
                                        <tr>
                                            <td><a onclick="return confirm('Apakah anda yakin?')" href="<?php echo site_url('cart/remove/'.$item['rowid']) ?>"><i class="fa fa-times-circle"></i></a></td>
                                            <td>
                                                <h4 class="no-margin"><?php echo $item['name']?></h4>
                                                color :
                                                <select name="color">
                                                    <?php 
                                                        $product = $this->M_Product->get_detail($item['id']);
                                                    ?>
                                                    <?php foreach ($product->color as $color): ?>
                                                        <?php 
                                                        if ($color == $item['options']['color']) 
                                                        {
                                                            $selected = 'selected=""';
                                                        }
                                                        else
                                                        {
                                                            $selected = '';
                                                        }
                                                        ?>
                                                        <option <?php echo $selected ?> value="<?php echo $color ?>"><?php echo $color ?></option>
                                                    <?php endforeach; ?>                                
                                                </select>
                                            </td>
                                            <td>
                                                <input type="hidden" name="rowid[]" value="<?php echo $item['rowid'] ?>">
                                                <input type="number" name="qty[]" value="<?php echo $item['qty'] ?>"/></td>
                                            <td>Rp <?php echo number_format($item['price'], 0, ',', '.') ?></td>
                                            <td>Rp <?php echo number_format($item['subtotal'], 0, ',', '.') ?></td>
                                        </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                                <div class="panel-heading">                                    
                                    <input type="submit" class="btn btn-primary btn-xs" value="Update Cart"></a>
                                </div>
                                <?php form_close() ?>  
                            </div>                            
                        </div>
                        <div class="col-md-4">
                            <div class="panel panel-default">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><h3 class="no-margin">Rp <?php echo number_format($this->cart->total(), 0, ',', '.') ?></h3></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <a href="<?php echo site_url('tarif') ?>" class="btn btn-success form-control">Checkout Now <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <?php else: ?>
                                <p>Your cart is empty</p>
                                <a href="home" class="btn btn-primary" title="">Shopping now</a>
                            <?php endif; ?>
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
        <!-- /.container -->
    </article>