<!--<blockquote class="stu-note">
    <p>A especificação aqui documentada é, por enquanto, uma especificação de prova de conceito e não pode ser usada para fins de implementação. 
    Nenhuma responsabilidade pode ser inferida do uso ou mau uso desta especificação, ou de suas consequências. Além do predisposto, esta especificação
    está a ser desenvolvida para entrega à HL7 Portugal</p>
  </blockquote>-->

### Âmbito

O presente guia de implementação (IG) foi desenvolvido com o objetivo de uniformizar a definição, utilização e partilha de informações entre diferentes sistemas de informação de saúde, assegurando uma interoperabilidade eficaz entre diferentes entidades e profissionais de saúde. 

Este guia fornece especificações técnicas, utilizando o FHIR Versão 4, e funcionais e pressupõe que o leitor esteja familiarizado com a especificação funcional e com esta versão do FHIR.

### Introdução
O guia de implementação apresenta um conjunto de orientações para a implementação do Processo de Episódio do Utente, alinhadas com as melhores práticas internacionais [normas de interoperabilidade FHIR (Fast Healthcare Interoperability Resources) e orientações da HL7], e adaptadas às especificidades do setor de saúde português. Fornece uma descrição geral, bem como uma descrição mais específica de situações práticas. Assim, promove-se a integração entre sistemas, permitindo a partilha de informações de saúde de forma estruturada, segura e eficiente, com foco nos processos relacionados ao acompanhamento e registo de interações do utente com os serviços de saúde.

Este guia tem como grupos-alvo:
- Profissionais de saúde
- Fornecedores de software
- Analistas de sistemas
- Arquitetos de informação
- Desenvolvedores de software

### Enquadramento e Visão

O desenvolvimento deste guia está inserido no contexto de transformação digital do setor da saúde, em conformidade com as diretivas europeias e internacionais, como a Comissão Europeia e a Organização Mundial da Saúde. A digitalização e a interoperabilidade são fundamentais para colocar o utente no centro dos cuidados, garantindo o acesso seguro e imediato à sua informação clínica.

A adoção das normas FHIR tem vindo a consolidar-se como um elemento essencial na transformação digital da saúde, devido à sua flexibilidade, capacidade de personalização e facilidade de integração. A interoperabilidade é um dos pilares deste manual, englobando tanto os aspetos semânticos (significado dos dados) como os sintáticos (formato da informação). 
Os guias de implementação aqui apresentados pretendem:
- Maior coordenação de cuidados: informação precisa e atempada sobre o histórico clínico do utente;
- Melhoria na tomada de decisão clínica: dados padronizados para apoio a diagnósticos e intervenções;
- Eficiência administrativa: automatização de processos e redução de redundâncias na gestão de dados.

Este manual reflete as orientações legais e técnicas atualmente vigentes, e estabelece as bases para uma transformação gradual, onde o foco terapêutico será cada vez mais central, automatizando tarefas administrativas e assegurando a eficiência na gestão de informação clínica.


### Dependências

{% include dependency-table.xhtml %}


### Autores e contribuidores

<table>
<thead>
<tr class="header">
<th>Papel</th>
<th>Organização</th>
<th>Contacto</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Autor</td>
<td>Glintt</td>
<td>info <b>at</b> glinttglobal.com</td>
</tr><tr class="even">
<td>Autor</td>
<td>HealthySystems</td>
<td>integracoes <b>at</b> hltsys.pt</td>
</tr></tbody>
</table>
