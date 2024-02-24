<?php
if ($item['status'] == 0) {
?>
    <a href="setuju.php?id=<?= $item['peminjaman_id']; ?>"><span data-placement='top' data-toggle='tooltip' title='Setuju'><button class="btn btn-success">Setuju</button></span></a>&nbsp;
    <a href="tidaksetuju.php?id=<?= $item['peminjaman_id']; ?>"><span data-placement='top' data-toggle='tooltip' title='Tidak Setuju'><button class="btn btn-danger">Tidak Setuju</button></span></a>&nbsp;
    <a title="kembali" class="btn btn-secondary" href="data-peminjaman.php">Kembali</a>
<?php
} elseif ($item['status'] == 1) {
?>
    <a href="tidaksetuju.php?id=<?= $item['peminjaman_id']; ?>"><span data-placement='top' data-toggle='tooltip' title='Tidak Setuju'><button class="btn btn-danger">Tidak Setuju</button></span></a>&nbsp;
    <a title="kembali" class="btn btn-secondary" href="data-peminjaman.php">Kembali</a>
<?php
} elseif ($item['status'] == 2) {
?>
    <a href="setuju.php?id=<?= $item['peminjaman_id']; ?>"><span data-placement='top' data-toggle='tooltip' title='Setuju'><button class="btn btn-success">Setuju</button></span></a>&nbsp;
    <a title="kembali" class="btn btn-secondary" href="data-peminjaman.php">Kembali</a>
<?php
} else {
?>
    <a title="kembali" class="btn btn-secondary" href="data-peminjaman.php">Kembali</a>
<?php
}
?>