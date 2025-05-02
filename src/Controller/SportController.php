<?php

namespace App\Controller;

use App\Entity\Sport;
use App\Repository\SportRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

final class SportController extends AbstractController
{
    #[Route('/sports', name: 'sport_index')]
    public function index(SportRepository $sportRepository): Response
    {
        $sports = $sportRepository->findAll();

        return $this->render('sport/index.html.twig', [
            'sports' => $sports,
        ]);
    }

    #[Route('/sport/{id}', name: 'sport_show', requirements: ['id' => '\d+'])]
    public function show(Request $request, int $id, SportRepository $sportRepository): Response
    {
        $sport = $sportRepository->find($id);

        if (!$sport) {
            throw $this->createNotFoundException('Sport non trouvé');
        }

        return $this->render('sport/show.html.twig', [
            'sport' => $sport,
        ]);
    }
}

