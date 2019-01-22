<?php
function soodus($hind, $soodusProtsent){
	return round($hind * ((100 - $soodusProtsent) / 100), 2);
}
?>
<!DOCTYPE html>
<html lang="et">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Sookla menuu</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
              crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid text-center">
            <div class="row">
                <div class="col">
                    <div id="accordion">
                        <div class="card m-3">
                            <div class="card-header alert-dark">
                                <a href="#praed" data-parent="#accordion" data-toggle="collapse" >
                                    <h2 class="text-dark">PRAED <i class="fas fa-utensils"></i></h2>
                                </a>
                            </div>
							<?php
							$praed = array(
								array(
									'nimetus' => 'Sealihapada ploomide ja aprikoosiga',
									'kirjeldus' => 'sealihapada, lisand, salat, leib',
									'hind' => 2.65),
								array(
									'nimetus' => 'Praetud kanakints',
									'kirjeldus' => 'praetud kana, lisand, salat, leib',
									'hind' => 2.50),
								array(
									'nimetus' => 'Hakklihakaste',
									'kirjeldus' => 'hakklihakaste, lisand, salat, leib',
									'hind' => 2.45),
								array(
									'nimetus' => 'Kartul, kaste, salat, leib',
									'kirjeldus' => '',
									'hind' => 1.38),
								array(
									'nimetus' => 'Hakklihakaste 1/2',
									'kirjeldus' => 'hakklihakaste, lisand, salat, leib',
									'hind' => 1.30)
									
							);
							echo '<div id="praed" class="collapse">';
							foreach ($praed as $praad=>$info){
							    echo '<ul class="list-group">';
									echo '<li class="list-group-item">';
                                        echo '<p class="mb-0">'.$info['nimetus'].' <br>';
                                            echo '<span class="small text-secondary">'.$info['kirjeldus'].'</span><br>';
                                            echo '<span class="badge badge-info">'.$info['hind'].'&euro;</span>';
                                            echo '<span class="badge badge-success">'.soodus($info['hind'], 15).'&euro;</span>';
                                        echo '</p>
                                    </li>';
							echo '</ul>';
							}
							echo '</div>';
							?>
                        </div>
                        <div class="card m-3">
                            <div class="card-header alert-dark">
                                <a href="#supid" data-parent="#accordion" data-toggle="collapse" >
                                    <h2 class="text-dark">SUPID <i class="fas fa-utensil-spoon"></i></h2>
                                </a>
                            </div>
							<?php
							echo '
                            <div id="supid" class="collapse">
                                <ul class="list-group">
                                    <li class="list-group-item">
                                        <p class="mb-0">Rassolnik <br>
                                            <span class="small text-secondary">supp, hapukoor, leib</span><br>
                                            <span class="badge badge-info">1.10&euro;</span>
                                            <span class="badge badge-success">0.94&euro;</span>
                                        </p>
                                    </li>
                                </ul>
                            </div>';
							?>
                        </div>
                        <div class="card m-3">
                            <div class="card-header alert-dark">
                                <a href="#magus" data-parent="#accordion" data-toggle="collapse" >
                                    <h2 class="text-dark">MAGUSTOIDUD <i class="fas fa-cookie-bite"></i></h2>
                                </a>
                            </div>
							<?php
							echo '
                            <div id="magus" class="collapse">
                                <ul class="list-group">
                                    <li class="list-group-item">
                                        <p class="mb-0">Rosinakisell vahukoorega <br>
                                            <span class="badge badge-info">1.05&euro;</span>
                                            <span class="badge badge-success">0.90&euro;</span>
                                        </p>
                                    </li>
                                </ul>
                            </div>';
							?>
                        </div>
                        <div class="card m-3">
                            <div class="card-header alert-dark">
                                <a href="#joogid" data-parent="#accordion" data-toggle="collapse" >
                                    <h2 class="text-dark">JOOGID <i class="fas fa-glass-whiskey"></i></h2>
                                </a>
                            </div>
							<?php
							echo '
                            <div id="joogid" class="collapse">
                                <ul class="list-group">
                                    <li class="list-group-item">
                                        <p class="mb-0">Mahl <span class="badge badge-info">0.60&euro;</span></p>
                                    </li>
                                    <li class="list-group-item">
                                        <p class="mb-0">Morss <span class="badge badge-info">0.25&euro;</span></p>
                                    </li>
                                    <li class="list-group-item">
                                        <p class="mb-0">Piim <span class="badge badge-info">0.30&euro;</span></p>
                                    </li>
                                    <li class="list-group-item">
                                        <p class="mb-0">Keefir <span class="badge badge-info">0.39&euro;</span></p>
                                    </li>
                                </ul>
                            </div>';
							?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>