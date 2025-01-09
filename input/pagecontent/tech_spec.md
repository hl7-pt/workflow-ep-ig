O processamento da informação e a transação de mensagens entre os sistemas de informação do hospital, utilizando o padrão FHIR, segue uma abordagem estruturada e interoperável, garantindo a troca eficiente e segura de dados clínicos e administrativos. Inicialmente, uma mensagem proveniente de um sistema externo entra na plataforma intermediária, onde é transformada para o formato FHIR R4. Este processo inclui a adaptação dos dados ao modelo FHIR adequado, como os recursos específicos (Patient, Encounter, Practitioner, entre outros), para representar com precisão os eventos relevantes.

Quando um profissional de saúde interage com o sistema de informação hospitalar, são gerados eventos que refletem as ações realizadas (por exemplo, admissão, transferência, alta, entre outros). Estes eventos disparam a criação de mensagens FHIR compatíveis, utilizando o método de messaging, que encapsula os dados nos recursos relacionados, e outros associados ao evento. A mensagem resultante é então enviada para outros sistemas de informação que necessitem desta informação, garantindo sincronização em tempo real e rastreabilidade dos dados.

Este fluxo assegura que os diferentes eventos do sistema, como admissões, cancelamentos ou transferências, sejam comunicados de forma consistente e padronizada. O uso do FHIR permite não apenas a interoperabilidade entre sistemas heterogéneos, mas também uma maior eficiência no processamento e na integração dos dados, promovendo a continuidade e a qualidade do atendimento hospitalar.

 

### Admissão do utente
A admissão do utente no sistema de saúde, frequentemente associada ao início de um episódio clínico, é um processo multifacetado que pode ser modelado utilizando diferentes recursos FHIR. Estes recursos capturam os aspetos administrativos, clínicos e operacionais da interação inicial entre o utente e a instituição de saúde. 

Principais recursos FHIR que suportam a modelação deste processo:

- MessageHeader: Atua como uma estrutura que organiza e identifica os dados enviados durante a comunicação sobre a admissão de um utente. Este recurso funciona como um indicador do tipo de evento que está a ocorrer (neste caso, a admissão), especificando quem enviou a mensagem, para quem se destina e se há mensagens relacionadas. É importante para rastrear e assegurar que a informação flui corretamente no sistema.

- Patient: Representa o utente envolvido no episódio. Armazena informações importantes, como nome, data de nascimento, género e identificadores únicos, garantindo que todos os dados referentes à admissão estejam ligados corretamente ao utente em questão. Este recurso assegura que os sistemas reconheçam o utente de forma inequívoca em todas as interações.

- Encounter: O recurso central para a admissão do utente. Representa a interação formal entre o utente e a instituição de saúde, detalhando o tipo de admissão (internamento, consulta, urgência), o local de atendimento, a data e hora de início, bem como o estado do episódio (planeado, em curso, concluído).

- Pratictioner: Identifica o profissional de saúde responsável pelo atendimento do utente durante a admissão. Isso pode incluir médicos, enfermeiros ou outros membros da equipa clínica. Garante que o profissional que tomou decisões ou prestou cuidados seja claramente identificado, permitindo a rastreabilidade e responsabilidade no atendimento.

- Location: Descreve o local onde a admissão do utente ocorreu. Pode referir-se a uma ala hospitalar, um consultório ou até um serviço virtual. Este recurso é importante para indicar onde o utente está a ser atendido, ajudando na organização interna e no acompanhamento do fluxo de trabalho.

Esses recursos, quando usados em conjunto, proporcionam uma visão completa e integrada do processo de admissão do utente, promovendo a interoperabilidade e eficiência na gestão de cuidados de saúde. A sua implementação permite padronizar a troca de informações entre diferentes sistemas e instituições, assegurando a continuidade e a qualidade dos cuidados prestados.

 
### Transferência do utente
A transferência do utente entre diferentes unidades, serviços ou instituições de saúde é um processo essencial para a continuidade dos cuidados. Este processo pode ocorrer dentro de uma mesma organização (ex.: transferência entre serviços hospitalares) ou entre diferentes instituições (por exemplo transferência para um centro de referência). A modelação técnica deste fluxo no contexto FHIR utiliza diversos recursos que capturam as dimensões operacionais, administrativas e clínicas da transferência. 

Principais recursos FHIR associados:

- MessageHeader: Atua como uma estrutura que organiza e identifica os dados enviados durante a comunicação sobre a  transferência do utente. Identifica que o evento reportado é uma transferência, especifica quem está a enviar a mensagem, quem deve recebê-la e se há mensagens relacionadas. Este recurso garante que os dados sejam organizados e rastreados corretamente durante o processo de transferência.

- Patient: Representa o utente envolvido, com as suas informações principais, como identificação, nome, género e outros dados relevantes. Este recurso assegura que a transferência seja registada corretamente para o utente específico, evitando erros de associação.

- Encounter: Representa o episódio do utente, no qual a transferência ocorre. O recurso regista as mudanças de localização, estados e períodos associados à transferência. Por exemplo, é possível documentar a origem e o destino do utente, bem como a data e a hora de início e conclusão da transferência.

- Pratictioner: Identifica os profissionais de saúde responsáveis por supervisionar ou realizar a transferência do utente. Isso pode incluir quem autorizou a transferência e quem irá recebê-lo no novo local. Este recurso é fundamental para assegurar a rastreabilidade dos cuidados prestados em todas as etapas do processo.

- Location: Representa os locais de origem e destino envolvidos na transferência. Pode incluir detalhes como o tipo de unidade (por exemplo, enfermaria, bloco operatório, UCI), as especialidades disponíveis e a capacidade de acolhimento.

Esses recursos trabalham de forma integrada para documentar e gerir a transferência do utente, assegurando que todas as informações relevantes são partilhadas entre as partes envolvidas. A implementação destes recursos permite uma rastreabilidade detalhada, promove a interoperabilidade entre sistemas e assegura a continuidade dos cuidados durante o processo de transferência.

### Alta do utente
A alta do utente marca o término formal de um episódio de interação com o sistema de saúde, seja após um internamento, uma consulta ou uma visita ao serviço de urgência. Este processo envolve tanto aspetos clínicos como administrativos, garantindo que o utente recebe todas as informações necessárias para o acompanhamento pós-alta e que o evento é devidamente registado no sistema. 

Principais recursos FHIR para modelar este processo:

- MessageHeader: Identifica e organiza a comunicação sobre a alta do utente. Informa que o evento em questão é a conclusão do episódio de atendimento (a alta) e especifica quem está a enviar esta informação, quem deve recebê-la e se há mensagens relacionadas. Este recurso é importante para garantir que todos os envolvidos no cuidado do utente sejam informados corretamente sobre a sua saída do sistema de saúde.

- Patient: Representa o utente que está a receber a alta. Assegura que todas as informações relacionadas à alta estejam claramente associadas ao respetivo indivíduo, utilizando identificadores únicos, como nome, data de nascimento e outros dados demográficos.

- Encounter: É o recurso principal para representar a alta do utente. Regista o encerramento do episódio, incluindo a data e a hora da alta, o estado final do episódio e o motivo da alta (por exemplo transferência para outra instituição, ou interrupção do tratamento).

- Pratictioner: Identifica o profissional de saúde responsável pela alta do utente. Pode ser o médico que assinou a alta, o enfermeiro que realizou os procedimentos finais ou outro membro da equipa relevante. Este recurso garante que haja uma referência clara ao profissional que assumiu a responsabilidade pelo encerramento do atendimento.

- Location: Descreve o local de onde o utente está a receber a alta. Pode ser uma ala hospitalar, uma unidade de internamento ou outro espaço dentro do sistema de saúde. Além disso, pode incluir informações sobre a transição para outros locais, como para a casa do utente ou para outro nível de cuidados, caso aplicável.

Esses recursos, em conjunto, permitem uma documentação detalhada e estruturada do processo de alta, garantindo que todas as informações relevantes são comunicadas e partilhadas com segurança. A implementação de um modelo interoperável baseado nestes recursos promove a continuidade dos cuidados, melhora a qualidade da assistência prestada e assegura o alinhamento com as melhores práticas no setor da saúde.


### Efetivação do utente em urgência
A efetivação do utente no serviço de urgência é o momento em que o utente formalmente inicia o seu atendimento no sistema de saúde, após triagem ou admissão. Este processo envolve a documentação administrativa, a criação de registos clínicos e a associação do utente a uma unidade de saúde e a profissionais responsáveis. 

A modelação técnica deste circuito, no contexto FHIR,  utiliza os seguintes recursos:

- MessageHeader: Organiza e identifica a comunicação referente à efetivação do utente no serviço de urgência. Informa que o evento em questão é a entrada formal do utente na urgência, especificando quem enviou a mensagem, para quem se destina e se há outras mensagens relacionadas. Este recurso é importante para rastrear e coordenar as informações durante o processo de admissão em urgência.

- Patient: Representa o utente que está a ser efetivado na urgência. Armazena informações pessoais e administrativas, como identificação, nome, género e dados demográficos. Este recurso assegura que todos os dados relativos ao atendimento estejam ligados ao respetivo utente, garantindo segurança e precisão no processo.

- Encounter: O recurso principal para representar a efetivação. No caso de urgências, inclui detalhes como o motivo da admissão, a prioridade de atendimento (por exemplo urgência, emergência), a localização inicial no serviço (por exemplo sala de triagem), o estado do episódio (por exemplo em progresso), e informações temporais, como a data e hora de início.

- Pratictioner: Identifica o profissional de saúde que está a realizar ou a supervisionar a efetivação do utente no serviço de urgência. Pode incluir o enfermeiro que realizou a triagem inicial, o médico responsável ou outro membro da equipa clínica. Este recurso assegura a rastreabilidade e clareza sobre quem está a prestar cuidados ao utente nesta situação específica.

- Location: Representa a localização inicial do utente no serviço de urgência, como a sala de triagem, gabinete de observação ou sala de espera. Este recurso ajuda a rastrear o fluxo do utente dentro do serviço de urgência.

Esses recursos, quando implementados em conjunto, permitem uma modelação completa e integrada do processo de efetivação no serviço de urgência. Eles garantem que o utente é atendido de forma eficiente e que todas as informações relevantes estão disponíveis para a equipa de saúde, promovendo segurança clínica e continuidade no atendimento.

### Cancelamento da admissão do utente
O cancelamento da admissão do utente ocorre quando uma admissão previamente planeada ou registada é anulada antes de ser concluída, devido a fatores administrativos, clínicos ou logísticos. Este processo deve ser devidamente documentado para manter a rastreabilidade e assegurar a consistência dos registos clínicos e administrativos. No contexto FHIR, os seguintes recursos são utilizados para modelar este processo:

- MessageHeader: Organiza e identifica a comunicação sobre o cancelamento da admissão do utente. Informa que o evento a ser processado é o cancelamento, especificando quem originou esta decisão e quem precisa ser notificado. Este recurso garante que a comunicação seja rastreável e corretamente distribuída a todos os envolvidos.

- Patient: Representa o utente cuja admissão foi cancelada. Assegura que o cancelamento seja claramente associado à pessoa correta, utilizando informações como identificadores únicos, nome e outros dados demográficos, evitando confusões com outros utentes.

- Encounter: É o recurso central para representar a admissão inicialmente registada. No caso de cancelamento, o estado do recurso é atualizado para "cancelado", e pode incluir informações adicionais como a data, hora e o motivo do cancelamento (ex.: desistência do utente, erro administrativo, ou decisão clínica).

- Pratictioner: Identifica o profissional de saúde responsável por efetuar ou autorizar o cancelamento da admissão. Isso pode incluir o médico que reavaliou a necessidade da admissão. Este recurso assegura clareza e rastreabilidade no processo de cancelamento.

- Location: Utilizado para indicar o local originalmente planeado para a admissão ou o local onde a decisão de cancelamento foi tomada. Embora o utente não tenha ocupado formalmente o local, este recurso ajuda a contextualizar o processo e a gestão dos recursos.

Esses recursos permitem uma gestão detalhada e transparente do cancelamento da admissão do utente, garantindo a consistência dos dados entre os diferentes sistemas envolvidos. A documentação adequada do cancelamento promove a rastreabilidade, facilita a análise de indicadores administrativos e clínicos, e assegura que o utente e as partes interessadas sejam informados de forma eficiente.

### Cancelamento da alta do utente
O cancelamento da alta do utente ocorre quando, por motivos administrativos, clínicos ou operacionais, o processo de alta é interrompido antes de ser concluído, e o utente permanece sob os cuidados da instituição de saúde. Este evento exige uma documentação rigorosa, para garantir a rastreabilidade das decisões e a atualização adequada dos registos clínicos. Os seguintes recursos FHIR são relevantes para modelar este processo:

- MessageHeader: Organiza e identifica a comunicação sobre o cancelamento da alta do utente. Informa que o evento a ser processado é o cancelamento de uma alta previamente registada, especificando quem tomou a decisão e quem precisa ser notificado. Este recurso assegura que a comunicação seja clara e rastreável dentro do sistema.

- Patient: Representa o utente cuja alta foi cancelada. Garante que o cancelamento seja inequivocamente associado ao respetivo indivíduo, utilizando informações como identificadores únicos, nome e outros dados demográficos, evitando erros nos registos.

- Encounter: O recurso principal para representar o episódio do utente. Quando uma alta é cancelada, o estado do Encounter é revertido de "concluído" ou "finalizado" para "em progresso" ou "ativo", dependendo do fluxo operacional. O motivo do cancelamento pode ser registado no campo apropriado, documentando causas como complicações clínicas ou questões administrativas.

- Pratictioner: Identifica o profissional de saúde que autorizou ou solicitou o cancelamento da alta. Pode ser o médico responsável pelo caso ou outro membro da equipa clínica relevante. Este recurso assegura rastreabilidade, documentando quem tomou a decisão e justificando a continuidade do episódio.

- Location: Refere o local onde o utente permanece após o cancelamento da alta. Pode ser uma ala hospitalar, uma unidade de cuidados intensivos ou outro espaço dentro da instituição de saúde. Este recurso ajuda a coordenar os processos e a gestão de recursos após a reversão da alta.

Esses recursos garantem que o cancelamento da alta seja devidamente registado e comunicado, promovendo a continuidade do cuidado e a gestão eficiente dos dados clínicos. A implementação detalhada deste processo no sistema FHIR assegura que todas as partes interessadas têm acesso às informações atualizadas e facilita a coordenação entre as equipas de saúde.