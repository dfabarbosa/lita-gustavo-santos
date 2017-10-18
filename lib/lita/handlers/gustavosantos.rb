require "lita"

module Lita
  module Handlers
    class GustavoSantos < Handler

      RESPONSES = [
        "Alimentar uma vítima não é amá-la, é querer que ela se cale e, por alguns instantes, deixe de chatear, é fazê-la acreditar que está certa e que o mundo não passa daquilo.",
        "O único preço da tua liberdade é a responsabilidade que tens por escolheres usá-la.",
        "Assim como os confiantes atraem os confiantes, os invejosos, rancorosos e maldosos também se atraem uns aos outros.",
        "Quem pensa por si, afirma o que sente e materializa as suas vontades, será sempre controverso, mas é precisamente da controvérsia que nasce a mudança, é do desacordo que se dá a evolução da alma.",
        "A liberdade é o expoente máximo do amor-próprio.",
        "Só aquele que ousa, por sua livre e espontânea vontade, abandonar o rebanho da indolência para fazer o seu próprio destino é que alcançará, verdadeiramente, o total poder da alma que é.",
        "Não te queixes da vida, não fiques à espera dela, cria-a, e terás a vida que sempre sonhaste.",
        "Uma pessoa que não sonha não encontra motivos, realmente fortes, para acordar todas as manhãs com vontade de viver, não se conecta com a divindade em si mesma.",
        "A vida é uma troca, como tal, tens de saber trocar o melhor de ti com o melhor dos outros e nunca o melhor que tens com o pior do que têm para ti.",
        "A tua energia é como uma carteira de ações: deves saber investi-la, aumentá-la e depois partilhá-la.",
        "Uma pessoa que não se ama dá um trabalho do caraças. Não se entrega, sente pela metade, duvida, cobra, culpa, desconfia e ainda se vitima. Repito, alguém no seu perfeito juízo escolhe esse padrão de pessoa para se relacionar?",
        "A dor do futuro é o sofrer por antecipação, de todas as dores a mais ridícula.",
        "Quanto mais dependeres do destino e mais te relacionares com gente dependente do destino, mais longe te encontras de sentir, da entrega e da vida na verdadeira aceção da palavra. Quanto mais do pior, menos do melhor. O teu destino é aquilo que tu pensas, aquilo que tu desejas para ti e te permites sentir, mas também pode ser aquilo que nunca ou jamais acreditarás vir a conquistar ou a sentir.",
        "A maior parte da ansiedade que sentes é devida a uma mente obstruída por problemas, incapaz de te obedecer e com uma capacidade tremenda de inventar cenários sombrios.",
        "O futuro existe, sim, mas na nossa mente. Em mais lado nenhum. Como tal, e como em todos os outros tempos, devemos estar atentos à forma como ele nos Mente, Manipula e Maltrata, por forma a minimizarmos os estragos que, naturalmente, irão existir.",
        "Um presente poderoso é a soma de várias consciências. Escolhe as pessoas certas para caminharem contigo e expulsa as que te limitam, aprende a amar-te para que te consigas desprender do ego e permite que a paixão tome conta de ti, para que te possas libertar da rotina.",
        "Todas as armadilhas do presente são escolhidas por ti, és tu que lhes dás esse significado e lhes prestas tamanha vassalagem, portanto, és tu o único e verdadeiro responsável por cair nelas, por te afundares numa profunda miséria emocional e por deixares de sentir o que verdadeiramente pode e deve ser sentido.",
        "Se é a tua vida tens de ser tu a querer o melhor para ela e muito passa pelas pessoas que estão ou podem estar ao teu lado. Qualquer tipo de relação que tenhas só faz sentido se ganhares alguma coisa com ela, mas alguma coisa boa e que se sinta, senão não é uma relação, é uma obrigação.",
        "A dor do presente é uma confluência de desilusões e ansiedades, de bloqueios e de medos, de tudo o que aconteceu ou ficou por acontecer e de tudo o que poderá acontecer ou nunca existir.",
        "A mente serve para filtrar o coração, não para o aprisionar, mas também nos serve, e bem, se estiver apontada para a criatividade e domesticada para nos permitir sentir."
      ]

      route %r{gustavo_santos}i, :gustavo_santos, command: true, help: { "gustavo_santos" => "gives you a quote from gustavo santos" }

      def gustavo_santos(response)
        response.reply RESPONSES.shuffle.first
      end

    end

    Lita.register_handler(GustavoSantos)
  end
end
