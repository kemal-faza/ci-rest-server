<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <h5 class="card-header text-center bg-primary text-light">Masuk</h5>
                <div class="card-body">

                    <!-- PEMBERITAHUAN JIKA USERNAME ATAU PASSWORD SALAH -->
                    <?php if ($this->session->userdata('error')) : ?>
                        <div class="alert alert-danger text-center" role="alert">
                            <h5><?= $this->session->userdata('error'); ?></h5>
                        </div>
                    <?php endif; ?>
                    <?php $this->session->unset_userdata('error'); ?>

                    <!-- PEMBERITAHUAN JIKA REGISTRASI BERHASIL DILAKUKAN -->
                    <?php if ($this->session->userdata('success')) : ?>
                        <div class="alert alert-success text-center" role="alert">
                            <h5><?= $this->session->userdata('success'); ?></h5>
                        </div>
                    <?php endif; ?>
                    <?php $this->session->unset_userdata('success'); ?>

                    <!-- FORM LOGIN -->
                    <form action="" method="POST">
                        <div class="mb-3">
                            <label for="username" class="form-label">Nama Pengguna :</label>
                            <input type="text" class="form-control" name="username" id="username" placeholder="Nama Pengguna Kamu" autocomplete="off">
                            <small class="form-text text-danger"><?= form_error('username'); ?></small>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password :</label>
                            <input type="password" class="form-control" name="password" id="password" placeholder="Password Kamu">
                            <small class="form-text text-danger"><?= form_error('password'); ?></small>
                        </div>
                        <div class="mb-3">
                            <label for="password-verify" class="form-label">Verifikasi Password :</label>
                            <input type="password" class="form-control" name="password-verify" id="password-verify" placeholder="Verifikasi Password Kamu">
                            <small class="form-text text-danger"><?= form_error('password-verify'); ?></small>
                        </div>
                        <button type="submit" class="btn btn-primary float-end" name="submit">Masuk!</button>
                    </form>
                    <p>Belum punya akun? <a href="<?= base_url() ?>tugas/registrasi/" class="card-link">Daftar Sekarang!</a></p>
                </div>
            </div>
        </div>
    </div>
</div>