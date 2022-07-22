<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Tabel <?= $title; ?></h1>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="container">
                <link rel="stylesheet" href="<?php echo base_url('assets/vendor/jquery/jquery-ui.min.css'); ?>" />
                <script src="<?php echo base_url('assets/vendor/jquery/jquery.min.js'); ?>"></script> <!-- Load file jquery -->
                <form method="get" action="" class="form">
                    <div class="form-group">
                        <label>Filter Berdasarkan</label>
                        <select class="form-control" name="filter" id="filter" style="width: 50%">
                            <option value="">Pilih</option>
                            <option value="1">Per Tanggal</option>
                            <!-- <option value="2">Per INVOICE</option> -->
                        </select>
                    </div>
                    <div class="form-group" id="form-tanggal">
                        <label>Dari Tanggal</label>
                        <input type="date" name="tanggal" class="form-control input-tanggal" style="width: 50%" />
                    </div>
                    <div class="form-group" id="form-tanggal2">
                        <label>Sampai Tanggal</label>
                        <input type="date" name="tanggal2" class="form-control input-tanggal2" style="width: 50%" />
                    </div>
                    <div class="form-group" id="form-nis">
                        <label>INVOICE/PELANGGAN</label>
                        <select name="invoice_code" class="form-control" style="width: 50%">
                            <option value="">Pilih</option>
                            <?php
                            foreach ($pelanggan as $data) { // Ambil data tahun dari model yang dikirim dari controller
                                echo '<option value="' . $data->invoice_code . '">' . $data->invoice_code . '|' . $data->name . '</option>';
                            }
                            ?>
                        </select>
                    </div>
                    <button class="btn btn-primary" type="submit">Tampilkan</button>
                    <a href="<?php echo base_url() . "administrator/laporan_transaksi"; ?>">Reset Filter</a>
                </form>
            </div>
        </div>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"><?php echo $ket; ?></h6>
        </div>
        <div class="card-body">
            <a href="<?php echo $url_cetak; ?>" class=" btn btn-danger mb-3"><i class="fas fa-file-pdf"></i> CETAK PDF</a>
            <!-- <a href="<?php echo $url_cetak; ?> class=" btn btn-danger mb-4"><i class="fas fa-file-pdf"></i> Download pdf</a> -->
            <div class="table-responsive">
                <table class="table table-striped" id="dataTable" width="100%" cellspacing="0">
                    <thead style="text-align: center">
                        <tr>
                            <th style="text-align: center;">No</th>
                            <th style="text-align: center;">No Invoice</th>
                            <th style="text-align: center;">Nama</th>
                            <th style="text-align: center;">Email</th>
                            <th style="text-align: center;">Alamat</th>
                            <th style="text-align: center;">Tanggal Pesanan</th>
                            <th style="text-align: center;">Total Harga</th>
                            <th style="text-align: center;">Kurir</th>
                            <th style="text-align: center;">Pay Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        if (!empty($lap_pelanggan)) {
                            $no = 1;
                            foreach ($lap_pelanggan as $data) {
                        ?>
                                <tr>
                                    <td style="text-align: center;"><?php echo $no++ ?></td>
                                    <td style="text-align: center;"><?php echo $data->invoice_code ?></td>
                                    <td style="text-align: center;"><?php echo $data->name ?></td>
                                    <td style="text-align: center;"><?php echo $data->email ?></td>
                                    <td style="text-align: center;"><?php echo $data->address ?></td>
                                    <td style="text-align: center;"><?php echo $data->date_input ?></td>
                                    <td style="text-align: center;">Rp <?= number_format($data->total_all, 0, ",", "."); ?></td>
                                    <td style="text-align: center;"><?php echo $data->courier_service ?></td>
                                    <td style="text-align: center;"><?php echo  $data->pay_status ?></td>
                                </tr>
                        <?php }
                        }
                        ?>
                    </tbody>
                    <script src="<?php echo base_url('assets/vendor/jquery/jquery-ui.min.js'); ?>"></script> <!-- Load file plugin js jquery-ui -->
                    <script>
                        $(document).ready(function() { // Ketika halaman selesai di load
                            $('#form-tanggal, #form-tanggal2, #form-nis, #form-tahun').hide(); // Sebagai default kita sembunyikan form filter tanggal, bulan & tahunnya
                            $('#filter').change(function() { // Ketika user memilih filter
                                if ($(this).val() == '1') { // Jika filter nya 1 (per tanggal)
                                    $('#form-nis, #form-bulan, #form-tahun').hide();
                                    $('#form-tanggal').show(); // Tampilkan form tanggal
                                    $('#form-tanggal2').show(); // Tampilkan form tanggal
                                } else if ($(this).val() == '2') { // Jika filter nya 2 (per bulan)
                                    $('#form-tanggal, #form-tanggal2, #form-bulan, #form-tahun').hide();
                                    $('#form-nis').show(); // Tampilkan form bulan dan tahun
                                } else { // Jika filternya 3 (per tahun)
                                    $('#form-tanggal, #form-tanggal2, #form-nis, #form-tahun').hide();
                                }
                                $('#form-tanggal input, #form-bulan select, #form-tahun select').val(''); // Clear data pada textbox tanggal, combobox bulan & tahun
                            })
                        })
                    </script>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->