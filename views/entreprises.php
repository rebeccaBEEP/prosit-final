<?php
require_once __DIR__ . '/../models/Entreprise.php';;

// Récupérer le numéro de page (par défaut: 1)
$page = isset($_GET['page']) ? max(1, (int)$_GET['page']) : 1;

// Récupérer les offres et les infos de pagination
$offres = Entreprise::getAll($page);
$pagination = Entreprise::getPagination($page);
?>

<section class="search">
        <h2>Find Your Dream Job</h2>
        <form action="#" method="get">
            <input type="text" name="keywords" 
                placeholder="Mots-clés">
            <input type="text" name="location" 
                placeholder="Localisation">
            <input type="text" name="company" 
                placeholder="Entreprise">
            <button type="submit">
                Search
            </button>
        </form>
</section>
<section class="job-listings">
    <ul>
        <?php foreach ($offres as $offre): ?>
            <li>
                <h3><?= htmlspecialchars($offre['titre']) ?></h3>
                <p>Entreprise : <?= htmlspecialchars($offre['entreprise']) ?></p>
                <p>Localisation : <?= htmlspecialchars($offre['lieu']) ?></p>
                <p>Description : <?= htmlspecialchars($offre['description']) ?></p>
                <p>Salaire : <?= htmlspecialchars($offre['salaire']) ?></p>
                <p>Type de contrat : <?= htmlspecialchars($offre['type_contrat']) ?></p>
                
                <!-- Lien de postulation avec l'ID de l'offre -->
                <a href="index.php?page=form&id=<?= $offre['id'] ?>&poste=<?= urlencode($offre['titre']) ?>">
                    Postuler
                </a>
            </li>
        <?php endforeach; ?>
    </ul>

    <!-- Pagination -->
    <div class="pagination">
        <?php if ($pagination['has_previous']): ?>
            <a href="?page=<?= $pagination['current'] - 1 ?>">Précédent</a>
        <?php endif; ?>
        
        <span>Page <?= $pagination['current'] ?> sur <?= $pagination['total'] ?></span>
        
        <?php if ($pagination['has_next']): ?>
            <a href="?page=<?= $pagination['current'] + 1 ?>">Suivant</a>
        <?php endif; ?>
    </div>
</section>
<div style="text-align: center; margin-bottom: 20px;">
    <a href="./index.php" style="display: inline-block; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;">Revenir à la première page</a>
</div>

<button class="scroll-to-top" onclick="document.querySelector('.search').scrollIntoView({ behavior: 'smooth' });">↑</button>
