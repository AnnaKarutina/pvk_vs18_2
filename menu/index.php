<?php
require_once 'lib/fnk.php';
require_once 'menus/menu.php';

pais();
?>

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
<!--                        supide osa -->
                        <div class="card m-3">
                            <div class="card-header alert-dark">
                                <a href="#supid" data-parent="#accordion" data-toggle="collapse" >
                                    <h2 class="text-dark">SUPID <i class="fas fa-utensil-spoon"></i></h2>
                                </a>
                            </div>
                        <?php
                        echo '<div id="supid" class="collapse">';
                        foreach ($supid as $supp=>$info){
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
                                <a href="#magus" data-parent="#accordion" data-toggle="collapse" >
                                    <h2 class="text-dark">MAGUSTOIDUD <i class="fas fa-cookie-bite"></i></h2>
                                </a>
                            </div>
                            <?php
                            echo '<div id="magus" class="collapse">';
                            foreach ($magusad as $magus=>$info){
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
                                <a href="#joogid" data-parent="#accordion" data-toggle="collapse" >
                                    <h2 class="text-dark">JOOGID <i class="fas fa-glass-whiskey"></i></h2>
                                </a>
                            </div>
                            <?php
                            echo '<div id="joogid" class="collapse">';
                            foreach ($joogid as $jook=>$info){
                                echo '<ul class="list-group">';
                                echo '<li class="list-group-item">';
                                echo '<p class="mb-0">'.$info['nimetus'].' ';
                                echo '<span class="small text-secondary">'.$info['kirjeldus'].'</span>';
                                echo '<span class="badge badge-info">'.$info['hind'].'&euro;</span>';
//                                echo '<span class="badge badge-success">'.soodus($info['hind'], 15).'&euro;</span>';
                                echo '</p>
                                    </li>';
                                echo '</ul>';
                            }
                            echo '</div>';
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<?php
jalus();
?>