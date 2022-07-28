<div class="wrapper" style="width: 70%;">
  <a href="<?= base_url(); ?>">
    <h2 class="brand-name"><?= $this->Settings_model->general()["app_name"]; ?></h2>
  </a>
  <p class="subtitle">Daftar akun baru sekarang</p>
  <?php echo $this->session->flashdata('failed'); ?>
  <form action="<?= base_url(); ?>register" method="post">
    <div class="address">
      <div class="row">
        <div class="col-lg-6">
          <div class="form-group">
            <input type="text" placeholder="Nama Lengkap" name="name" class="form-control" autocomplete="off" value="<?php echo set_value('name'); ?>">
            <small class="form-text text-danger pl-1"><?php echo form_error('name'); ?></small>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="form-group">
            <input type="email" placeholder="Alamat Email" name="email" class="form-control" autocomplete="off" value="<?php echo set_value('email'); ?>">
            <small class="form-text text-danger pl-1"><?php echo form_error('email'); ?></small>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="form-group">
            <input type="password" placeholder="Password" name="password" class="form-control" autocomplete="off">
            <small class="form-text text-danger pl-1"><?php echo form_error('password'); ?></small>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="form-group">
            <input type="password" placeholder="Konfirmasi Password" name="password1" class="form-control" autocomplete="off">
            <small class="form-text text-danger pl-1"><?php echo form_error('password1'); ?></small>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="form-group">
            <label for="label">Alamat Sebagai</label>
            <input type="text" id="label" autocomplete="off" class="form-control" placeholder="Contoh: Rumah, Kantor, Kos, dll" required name="label">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-6">
          <div class="form-group">
            <label for="telp">Nomor Telepon</label>
            <input type="number" id="telp" autocomplete="off" class="form-control" required name="telp">
            <small class="text-muted">Contoh: 081234567890</small>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="form-group">
            <label for="zipcode">Kode Pos</label>
            <input type="number" id="zipcode" autocomplete="off" class="form-control" required name="zipcode">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-6">
          <div class="form-group">
            <label for="prov">Provinsi</label>
            <select name="prov" id="propinsi" class="form-control" required>
              <option></option>
              <?php foreach ($provinces as $p) : ?>
                <option value="<?= $p->id; ?>"><?= $p->nama; ?></option>
              <?php endforeach; ?>
            </select>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="form-group">
            <label for="kab">Kabupaten</label>
            <select name="kab" class="form-control" id="kabupaten">
              <option value=''>Select Kabupaten</option>
            </select>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="form-group">
            <label for="kec">Kecamatan</label>
            <select name="kec" class="form-control" id="kecamatan">
              <option value=''>Select Kecamatan</option>
            </select>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="form-group">
            <label for="des">Desa</label>
            <select name="des" class="form-control" id="desa">
              <option value=''>Select Desa</option>
            </select>
          </div>
        </div>
      </div>
      <div class="col-lg-12">
        <label for="address">Alamat</label>
        <textarea name="address" id="address" class="form-control" placeholder="Isi dengan nama jalan, nomor rumah, nama gedung, dsb" required></textarea>
      </div>
      <div class="row">



        <small class="text-muted">Saya telah membaca dan menyetujui <a href="<?= base_url(); ?>terms" target="_blank">Syarat dan Ketentuan</a> serta <a href="<?= base_url(); ?>privacy-policy" target="_blank">Kebijakan Privasi</a> <?= $this->Settings_model->general()["app_name"]; ?></small>
        <button type="submit" class="btn btn-block btn-dark mt-3">Daftar</button>
        <hr>
        <p class="text-lead">Atau sudah punya akun? <a href="<?= base_url(); ?>login">Login</a> sekarang</p>
      </div>
  </form>
</div>

<?php if ($this->session->flashdata('success')) { ?>
  <div class="modal fade" id="modalRegisterSuccess" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document" style="width: 400px">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalCenterTitle">Registrasi Berhasil</h5>
        </div>
        <div class="modal-body">
          <p class="text-center h1"><i class="fa text-dark fa-envelope-open-text"></i></p>
          <p class="text-muted">Kami telah mengirimkan email verifikasi akun ke email Anda. Silakan cek inbox atau spam.</p>
          <a href="<?= base_url(); ?>login" class="btn btn-block btn-dark">Ke halaman login</a>
        </div>
      </div>
    </div>
  </div>
<?php } ?>
<script>
  $(document).ready(function() {
    $("#propinsi").change(function() {
      var url = "<?php echo site_url('auth/add_ajax_kab'); ?>/" + $(this).val();
      $('#kabupaten').load(url);
      return false;
      // console.log(url);
    })


    $("#kabupaten").change(function() {
      var url = "<?php echo site_url('auth/add_ajax_kec'); ?>/" + $(this).val();
      $('#kecamatan').load(url);
      return false;
    })

    $("#kecamatan").change(function() {
      var url = "<?php echo site_url('auth/add_ajax_des'); ?>/" + $(this).val();
      $('#desa').load(url);
      return false;
    })
  });
</script>