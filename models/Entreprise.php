<?php
class Entreprise {
    public static function getAll() {
        return [
            ["titre" => "Web Developer", "entreprise" => "ABC Tech", "localisation" => "Paris", "description" => "Développeur Web"],
            ["titre" => "Graphiste", "entreprise" => "XYZ Design", "localisation" => "Lyon", "description" => "Créatif·ve et passionné·e"],
            // Ajoute d'autres ici
        ];
    }

    public static function handleForm() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            if (isset($_FILES['resume']) && $_FILES['resume']['error'] === 0) {
                $file = $_FILES['resume'];
                if ($file['size'] > 2 * 1024 * 1024) return "Fichier trop volumineux.";

                $allowed = ['application/pdf', 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'];
                $finfo = finfo_open(FILEINFO_MIME_TYPE);
                $mime = finfo_file($finfo, $file['tmp_name']);

                if (!in_array($mime, $allowed)) return "Type de fichier non autorisé.";

                move_uploaded_file($file['tmp_name'], "uploads/" . basename($file['name']));
                return "Candidature envoyée avec succès.";
            } else {
                return "Erreur lors de l’envoi.";
            }
        }
        return "";
    }
}
