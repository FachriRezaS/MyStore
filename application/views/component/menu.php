<!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="<?php echo base_url() ?>">MY Store</a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="<?php echo site_url('about') ?>">About</a>
                            </li>
                            <li>
                                <a href="<?php echo site_url('services') ?>">Services</a>
                            </li>
                            <li>
                                <a href="<?php echo site_url('contacts') ?>">Contact</a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="<?php echo site_url('cart') ?>"><?php echo count($this->cart->contents()) ?><i class="fa fa-shopping-cart"></i></a></li>
                            <li class="dropdown">
                                <?php if($this->session->userdata('is_login')): ?>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    <?php echo $this->session->userdata('nama') ?>
                                    <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="<?php echo site_url('member_area') ?>">Member Area</a></li>
                                    <li><a href="<?php echo site_url('account/logout') ?>">Log Out</a></li>
                                </ul>
                            </li>
                            <?php else: ?>
                                <li>
                                    <a href="<?php echo site_url('account/index') ?>" title="">Login</a>
                                </li>
                            <?php endif; ?>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
        <!-- /.container -->
    </nav>