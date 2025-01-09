### Servidor de FHIR

A comunicação em FHIR requer um servidor de FHIR, na versão R4, disponível no Sistema Externo para a resolução de referências. Seguem abaixo os endpoints necessários:

1. Obter recurso por id:
    - Endpoint: GET [base]/[type]/[id]
    - Exemplo: GET [base]/Observation/123456

2. Obter recurso por identifier:
    - Endpoint: GET [base]/[type]?identifier=system|value
    - Exemplo: GET [base]/Observation?identifier=<http://example.com/fhir/mrn|1234>

Este requisito é a forma de garantir que, na ausência de um recurso referenciado no Bundle, este seja integrado no sistema de destino.

#### Bundle

As mensagens seguem no formato JSON e com o recurso FHIR Bundle do tipo Transaction ou Message. A tabela a baixo apresenta os campos e o seu significado comum aos tipos suportados. Seguidamente são apresentadas as distinções entre cada tipo.

<table border="1">
  <thead>
    <tr>
      <th>Propriedade</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>id</td>
      <td>Identificador único da transação</td>
    </tr>
    <tr>
      <td>type</td>
      <td>Identificação do tipo de Bundle: transaction ou message</td>
    </tr>
    <tr>
      <td>entry</td>
      <td>Lista de recursos FHIR </td>
    </tr>
  </tbody>
</table>

O **Bundle.entry.id** deve de ser igual ao **Bundle.entry.resource.identifier.value** com **use=oficial**.

#### Transaction

<table border="1">
    <thead>
        <tr>
            <th>Propriedade</th>
            <th>Descrição</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>entry.fullUrl</td>
            <td>Endpoint absoluto para o recurso </td>
        </tr>
        <tr>
            <td>entry.resource</td>
            <td>Recurso FHIR</td>
        </tr>
        <tr>
            <td>entry.resource.id</td>
            <td>Identificador do recurso FHIR</td>
        </tr>
        <tr>
            <td>entry.resource.identifier</td>
            <td>Lista de identificadores</td>
        </tr>
        <tr>
            <td>entry.request.method</td>

            <td>Métodos suportados: POST e PUT</td>
        </tr>
        <tr>
            <td>entry.request.url</td>

            <td>Endpoint HTTP equivalente para a entrada</td>
        </tr>
    </tbody>
</table>

#### Message

<table border="1">
    <thead>
        <tr>
            <th>Propriedade</th>
            <th>Descrição</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>entry.fullUrl</td>
            <td>Url absoluto para o recurso</td>
        </tr>
        <tr>
            <td>entry[0].resource</td>
            <td>Recurso FHIR MessageHeader</td>
        </tr>
        <tr>
            <td>entry[0].resource.eventCoding.display</td>
            <td>Evento HL7 message event. Exemplo: ADT^A08</td>
        </tr>
        <tr>
            <td>entry[0].resource.destination.name</td>
            <td>Nome do destino</td>
        </tr>
        <tr>
            <td>entry[0].resource.destination.endpoint</td>
            <td>Endpoint do destino</td>
        </tr>
        <tr>
            <td>entry[0].resource.source.name</td>
            <td>Nome da origem</td>
        </tr>
        <tr>
            <td>entry[0].resource.source.endpoint</td>
            <td>Endpoint da origem</td>
        </tr>
        <tr>
            <td>entry[1..N].resource</td>
            <td>Recurso FHIR</td>
        </tr>
        <tr>
            <td>entry[1..N].resource.id</td>
            <td>Identificador do recurso FHIR</td>
        </tr>
    </tbody>
</table>

#### Identificadores

<table border="1">
    <thead>
        <tr>
            <th>Propriedade</th>
            <th>Descrição</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>use</td>
            <td>Valor: official</td>
        </tr>
        <tr>
            <td>system</td>
            <td>Sistema onde o value existe</td>
        </tr>
        <tr>
            <td>value</td>
            <td>Identificador único no system</td>
        </tr>
    </tbody>
</table>