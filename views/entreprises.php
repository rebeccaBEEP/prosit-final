<section class="job-listings">
    <ul>
        <?php foreach ($entreprises as $e): ?>
            <li>
                <h3><?= htmlspecialchars($e['titre']) ?></h3>
                <p>Entreprise : <?= htmlspecialchars($e['entreprise']) ?></p>
                <p>Localisation : <?= htmlspecialchars($e['localisation']) ?></p>
                <p>Description : <?= htmlspecialchars($e['description']) ?></p>
                <a href="index.php?page=form&poste=<?= urlencode($e['titre']) ?>">Postuler</a>
            </li>
        <?php endforeach; ?>
    </ul>
</section>
