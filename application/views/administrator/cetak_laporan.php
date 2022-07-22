<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<div class="table">
    <table class="table table-striped" id="dataTable" width="100%" cellspacing="0">
        <thead style="text-align: center">
            <tr>
                <th style="text-align: center;">NO</th>
                <th style="text-align: center;">No Invoice</th>
                <th style="text-align: center;">Nama</th>
                <th style="text-align: center;">Email</th>
                <th style="text-align: center;">Alamat</th>
                <th style="text-align: center;">Date</th>
                <th style="text-align: center;">Total</th>
                <th style="text-align: center;">Order Status</th>
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
                        <td style="text-align: center;"><?php echo $data->status; ?></td>
                        <td style="text-align: center;"><?php echo  $data->pay_status ?></td>
                    </tr>
            <?php }
            }
            ?>
        </tbody>
        <script src="<?php echo base_url('assets/vendor/jquery/jquery-ui.min.js'); ?>"></script> <!-- Load file plugin js jquery-ui -->
    </table>
</div>
<script>
    window.print()
</script>