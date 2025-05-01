<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

final class SportController extends AbstractController
{
    #[Route('/sports', name: 'sport_index')]
public function index(SportRepository $sportRepository): Response
{
    return $this->render('sport/index.html.twig', [
        'sports' => $sportRepository->findAll()
    ]);
}

    #[Route('/sport/{id}', name: 'sport_show')]
        public function show(Sport $sport): Response
    {
        return $this->render('sport/show.html.twig', ['sport' => $sport]);
    }
}
