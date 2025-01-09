### Introdução
#### O que é um Utente?
Um utente é uma pessoa que recebe ou necessita de cuidados e está sob os cuidados de um sistema ou profissional de saúde, seja por prevenção de doenças e manutenção da saúde até o diagnóstico, tratamento e acompanhamento de condições agudas ou crónicas. Este termo abrange desde indivíduos que procuram atendimento de forma ativa até aqueles incluídos em programas preventivos ou de vigilância de saúde.

Os utentes são o foco principal dos sistemas de saúde e podem apresentar-se em diferentes contextos, como consultas de rotina, urgências, internamentos, entre outros. A relação entre utente e profissional de saúde é orientada pela confiança, ética e a personalização dos cuidados, considerando as necessidades individuais.
No contexto digital e de interoperabilidade em saúde, o utente é representado por dados demográficos e clínicos que são organizados e acedidos através de sistemas para melhorar a qualidade e eficiência dos cuidados prestados.

No FHIR, o recurso ***Patient*** é a representação digital do conceito de utente dentro de sistemas de informação em saúde, traduzindo para os sistemas as características essenciais de um utente, permitindo que essas informações sejam interoperáveis entre diferentes plataformas e organizações de saúde. Este recurso inclui detalhes como:
- Nome, data de nascimento, género, e informações de contato.
- Identificadores únicos, como números de registo hospitalar ou de saúde.
- Informações opcionais, como preferências linguísticas, estado civil, e contatos de emergência.

Este recurso é essencial para garantir que os dados de saúde sejam corretamente associados à pessoa certa, promovendo segurança e continuidade do cuidado. Recomenda-se a utilização do Número Nacional do Utente (NNU) como identificador oficial. No entanto cada implementação tem a capacidade de definir o identificador oficial na troca de informações:

- O identificador **NNU** deve ser incluído no recurso ***Patient*** como identifier com use = official.
- Identificadores temporários podem ser registados como use = temp e substituídos quando o NNU for conhecido.

A relação entre um utente e um episódio de saúde é central no contexto de cuidados médicos e na organização dos sistemas de saúde. Essa conexão reflete como o indivíduo interage com os serviços de saúde ao longo de diferentes momentos ou situações que exigem cuidado.

O utente é o ponto de origem de todos os episódios de saúde. Esses episódios, por sua vez, são as unidades organizacionais que estruturam e documentam as interações clínicas e administrativas no cuidado ao utente. Essa relação permite uma visão integrada e longitudinal da saúde do indivíduo, essencial para um cuidado centrado na pessoa.

Enquanto o recurso ***Patient*** fornece uma visão completa e estruturada dos dados pessoais e demográficos do utente, o conceito de episódio de saúde é o elemento que organiza e contextualiza as interações específicas do utente com o sistema de saúde.

Este recurso é essencial para garantir que os dados de saúde sejam corretamente associados à pessoa certa.

Em Portugal, o <ins>Registo Nacional de Utentes</ins> (RNU) é responsável por gerir os dados administrativos de utentes do sistema de saúde. O seu principal objetivo é garantir que cada cidadão tenha um identificador único, o NNU, que permita a sua identificação de forma consistente e inequívoca em todas as instituições de saúde do país.

O RNU centraliza e padroniza os dados administrativos dos utentes, assegurando que as informações sejam interoperáveis entre diferentes <ins>sistemas de informação hospitalar </ins>(HIS) e unidades de saúde. Este identificador nacional é fundamental para ligar episódios clínicos e administrativos de diferentes organizações de saúde, promovendo continuidade e qualidade nos cuidados.

#### O que é um Episódio?
No contexto do FHIR, um episódio de saúde refere-se a um conjunto de interações administrativas e clínicas que ocorrem entre um utente e o sistema de saúde, concentradas em torno de uma condição de saúde ou evento específico. Estas interações podem incluir consultas, internamentos, procedimentos, tratamentos e acompanhamento médico. Um episódio organiza e relaciona todas as informações e intervenções feitas durante o processo de atendimento, facilitando a gestão e o rastreio das atividades do utente.

No FHIR, o conceito de episódio é frequentemente representado pelo recurso ***Encounter***, que documenta o envolvimento do utente com um serviço de saúde, seja em consulta ambulatorial, hospitalização ou tratamento específico.

Desta forma, para existir um episódio é necessário existir um Utente. 

Existem dois tipos de contextos nos episódios: administrativo e clínico.

##### Episódio no Contexto Administrativo

No contexto administrativo, o episódio de saúde assume um papel central para a gestão dos dados financeiros e operacionais de uma instituição de saúde. Ele está intimamente ligado à gestão de custos e faturação dos serviços prestados, garantindo que todas as ações realizadas no episódio de saúde sejam corretamente registadas para efeitos administrativos.

**Características Administrativas**:

- **Identificação do Episódio**: O episódio no sistema administrativo é identificado por um número único, geralmente gerado pelo Sistema de Informação Hospitalar (HIS), que é associado ao utente e a todas as interações e serviços prestados durante o episódio.
Nota: Por vezes, em Portugal, a identificação do episódio é feita em conjunto com a identificação da classificação de episódio (e.g: Urgência, Internamento, entre outros).
- **Gestão de Recursos**: Os custos associados ao episódio incluem serviços médicos, hospitalares, exames e tratamentos. A associação de todos os serviços a um episódio facilita a gestão financeira.
- **Faturação e Relatórios**: A informação do episódio é usada para gerar faturas para os utentes e/ou seguradoras, e pode ser incluída em relatórios estatísticos e operacionais.
No FHIR, o ***Encounter*** também é usado para representar os aspetos administrativos do episódio. Ele contém informações como o <ins>**tipo de localização**</ins> (ex: hospital, clínica), <ins>**status**</ins> (ex: ativo, encerrado), <ins>**datas de entrada e saída**</ins> e, muitas vezes, a <ins>**classificação do episódio**</ins> (ex: internamento, consulta). Além disso, pode ser vinculado ao recurso ***Claim*** (para faturação) e a outros recursos administrativos.

##### Episódio no Contexto Clínico

No contexto clínico, o episódio de saúde envolve todas as interações e ações médicas realizadas durante um período específico, que pode ser contínuo ou pontual, e tem um objetivo clínico determinado, como tratar uma condição, monitorar um diagnóstico ou realizar um procedimento específico.

**Características Principais**:

- **Início e Término Definidos**: O episódio tem um ponto de entrada (ex: admissão, início de um tratamento) e um ponto de saída (ex: alta hospitalar, conclusão do tratamento).
- **Eventos Clínicos**: Durante o episódio, são realizados diagnósticos, intervenções, tratamentos e acompanhamento. 
- **Vínculo a Problemas de Saúde**: O episódio pode estar associado a um ou mais problemas de saúde (por exemplo, um episódio de internamento devido a uma cirurgia ou uma consulta de acompanhamento para diabetes).

No FHIR, o ***Encounter*** é o recurso central para representar este conceito, e é frequentemente associado a outros recursos, como ***Condition*** (para doenças ou condições), ***Procedure*** (para procedimentos realizados) e ***Observation*** (para resultados de exames).

### Processos existentes no Episódio do Utente:

- Admissão do Utente: ocorre quando este inicia um episódio de interação com o sistema de saúde, como uma urgência ou internamento.
- Transferência do Utente: mudança do local onde o utente se encontra ou serviço responsável dentro da mesma instituição (intra-hospitalar) ou entre instituições (inter-hospitalar).
- Alta do Utente: marca o encerramento de um episódio de interação com o sistema de saúde.
- Cancelamento da Admissão do Utente: ocorre quando o registo de um episódio é iniciado, mas o utente não chega a ser admitido formalmente.
- Cancelamento da Alta do Utente: ocorre quando, após o registo inicial da alta, é decidida a continuidade do atendimento do utente no mesmo episódio.

### Casos de Uso - Gestão do Episódio do Utente
Neste caso de uso, os sistemas partilham informações do episódio em cuidados de saúde tanto para doentes internados, como para doentes externos (urgência ou consulta). Aqui estão incluídos os eventos descritos no ponto 1.
São usadas transações de eventos de criação, atualização e cancelamento, assim como eventos de transferências que possam ocorrer. 
De seguida, de forma mais detalhada, estão descritos os eventos possíveis de existirem na Gestão do Episódio do Utente. 

#### Registo da Admissão
O utente encontra-se na unidade de saúde, onde o administrativo realiza a admissão do utente através do sistema de informação. Nesta situação, são consideradas as seguintes informações:

- Registo inicial: identificação do utente, motivo da admissão e tipo de episódio (internamento, consulta, etc.). Em caso de Urgência, é indicado qual o motivo da mesma e a prioridade definida na triagem.
- Dados administrativos: criação ou associação de um número de processo clínico, assim como um identificador do episódio em si, definição da unidade ou serviço responsável, e profissionais associados.
- Estado do episódio: o episódio fica “Ativo”, indicando que o utente foi admitido e que o episódio está em curso.
 
<div>{% include admissao.svg %}</div>
<br clear="all"/>

#### Registo de Transferência
O utente, já admitido na unidade de saúde, é transferido de um local, por exemplo sala de triagem, para outro local como quarto ou cama. Nesta situação, são consideradas as seguintes informações:

- Registo da transferência: inclui o motivo da transferência, unidade/serviço de origem e destino, e profissionais responsáveis;
- Atualização do episódio: a informação do episódio é atualizada com os novos dados de localização e os participantes envolvidos na continuidade do cuidado;
- Notificação e coordenação: comunicação entre as equipas envolvidas para garantir a continuidade do cuidado e o registo da aceitação da transferência pela unidade de destino.

<div>{% include transferencia.svg %}</div>
<br clear="all"/>

#### Registo da Alta
Após todas as interações necessárias com o utente nos seus cuidados de saúde, é dada a alta do do episódio. Nesta situação, são consideradas as seguintes informações:

- Condição de saída: informação sobre o estado clínico do utente, diagnósticos finais e recomendações para cuidados subsequentes. É também indicado a data de alta e o destino da alta (domicílio, outra instituição, entre outros);
- Atualização do estado do episódio: o episódio é alterado para o estado "Concluído", indicando o encerramento do episódio; 
- Documentação associada: emissão de documentos como relatório de alta, receitas e eventuais encaminhamentos para acompanhamento.

<div>{% include alta.svg %}</div>
<br clear="all"/>

#### Efetivação em Urgência
A efetivação ocorre quando o utente é formalmente registado como um caso ativo na urgência, após triagem ou primeira avaliação.

- Registo do episódio: Criação ou atualização do recurso Encounter com os dados do utente, motivo da urgência e prioridade definida na triagem.

- Estado inicial: O episódio é registado como "Ativo" (ou semelhante), com informações sobre a unidade de urgência, localização e profissionais associados.

- Monitorização contínua: O estado e os detalhes do episódio são atualizados ao longo do atendimento na urgência, incluindo diagnósticos e intervenções.

<div>{% include efetivacao.svg %}</div>
<br clear="all"/>

#### Registo do Cancelamento da Admissão
Nesta situação, o utente foi admitido na unidade de saúde, mas por algum motivo, como por exemplo engano ou desistência do utente, é feito o cancelamento da admissão.

- Motivo do cancelamento: indicação do motivo pelo qual a admissão não foi concluída (por exemplo, desistência do utente ou decisão clínica);
- Atualização do estado do episódio: o episódio é atualizado para o estado "Cancelado" (ou semelhante), e nenhuma interação é associada ao episódio.
- Auditoria e transparência: o registo do cancelamento deve ser mantido para fins de rastreabilidade.

<div>{% include cancel_admissao.svg %}</div>
<br clear="all"/>

#### Registo do Cancelamento da Alta
O cancelamento da alta ocorre quando, após o registo inicial da alta, é decidida a continuidade do atendimento do utente no mesmo episódio.

- Justificação da ação: informação sobre o motivo que levou ao cancelamento da alta (por exemplo, agravamento clínico ou erro no registo);
- Reativação do episódio: o estado do episódio é revertido de "Cancelado" para "Ativo" (ou semelhante), permitindo a continuidade da gestão do caso;
- Comunicação interna: atualização das equipas envolvidas sobre a mudança no plano de cuidado do utente.

<div>{% include cancel_alta.svg %}</div>
<br clear="all"/>