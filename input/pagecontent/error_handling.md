### Introdução

Um pedido que falha normalmente retorna um OperationOutcome .

No entanto, há muitas situações atípicas em que a resposta pode conter outros tipos de informações. Nem sempre é possivel detectar e descrever todas as situações de erro que podem ocorrer, mas os métodos de tratamento de erros mencionados mais abaixo, tentam resumir como podemos processar as informações dos erro retornados de uma forma simples e adequada.

### Informações retornadas

O impacto na gestão de erros depende da informação retornada pelo servidor onde ocorreu o erro. Desta forma, devemos ter em atenção o seguinte:

1. Verificar a resposta HTTP, por exemplo, HTTP/1.0 503 Service Unavailable é a informação mais importante sobre o resultado de um pedido feito pelo utilizador. Caso a resposta do pedido receba algo semelhante a 2XX indica sucesso, caso contrário, indica insucesso. Na tabela mais abaixo, há mais informações sobre os códigos HTTP possiveis e mais comuns.

2. Identificar o tipo de dados no *headers*, verificando o campo Content-Type. Por exemplo, Content-Type: "text/html" indica que ocorreu um erro na camada de transporte, porque normalmente numa resposta FHIR está marcada com application/fhir, como por exemplo Content-Type: "application/fhir+json; charset=UTF-8". Respostas que nãpo sejam do tipo FHIR devem ser tratadas como erros de sistema. Cabe ao responsável do serviço decidir a mensagem de erro apropriada para o utilizador em caso de erros de sistema.

3. Identificar o tipo de recurso FHIR no corpo da resposta. Na maioria dos casos, será uma das opções: vazio, um OperationOutcome, um Bundle ou o recurso solicitado. O conteúdo depende do que o sistema definiu como preferência no cabeçalho Prefer. Se não estiver especificada, deverá ser validado com o sistema qual o Prefer. No entanto, um erro deverá retornar sempre um OperationOutcome, independentemente do resultado.

4. Analisar o que o OperationOutcome diz sobre o erro.


### Códigos HTTP
Os códigos na tabela em baixo são os mais comuns nos sistemas:


<table border="1">
  <thead>
    <tr>
      <th>Código</th>
      <th>Definição</th>
      <th>Comentário</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>200</td>
      <td>OK</td>
      <td>Pedido bem sucedido</td>
    </tr>
    <tr>
      <td>201</td>
      <td>Created</td>
      <td>Pedido bem sucedido. Um ou mais recursos foram criados</td>
    </tr>
    <tr>
      <td>304</td>
      <td>Not Modified</td>
      <td>GET condicional recebido, mas as pré-condições foram avaliadas como falsas</td>
    </tr>
    <tr>
      <td>400</td>
      <td>Bad Request</td>
      <td>Erro no cliente, por exemplo falha na estrutura do pedido</td>
    </tr>
    <tr>
      <td>401</td>
      <td>Unauthorized</td>
      <td>Credenciais inválidas ou falha na autorização</td>
    </tr>
    <tr>
      <td>403</td>
      <td>Forbidden</td>
      <td>Operação não autorizada</td>
    </tr>
    <tr>
      <td>404</td>
      <td>Not Found</td>
      <td>Recurso/Elemento não encontrado</td>
    </tr>
    <tr>
      <td>409</td>
      <td>Conflict</td>
      <td>Conflito, geralmente devido ao estado inesperado do recurso</td>
    </tr>
    <tr>
      <td>422</td>
      <td>Unprocessable Entity</td>
      <td>Estrutura válida, mas não está em conformidade com a definição do recurso</td>
    </tr>
    <tr>
      <td>500</td>
      <td>Internal Server Error</td>
      <td>Erro inesperado no servidor</td>
    </tr>
    <tr>
      <td>503</td>
      <td>Service Unavailable</td>
      <td>Servidor temporariamente indisponível</td>
    </tr>
  </tbody>
</table>
