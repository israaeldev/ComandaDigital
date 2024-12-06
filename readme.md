Este banco de dados foi projetado para gerenciar um sistema de pedidos de pratos em um restaurante. Ele contém tabelas que armazenam informações sobre clientes, pratos, pedidos e a relação entre pedidos e pratos.

Tabelas

#1. Tabela client

Descrição: Armazena informações sobre os clientes.

Colunas:

id: Identificador único do cliente (chave primária).

endereco: Endereço do cliente.

name: Nome do cliente.

telefone: Número de telefone do cliente.

#2. Tabela dish

Descrição: Armazena informações sobre os pratos disponíveis no restaurante.

Colunas:

id: Identificador único do prato (chave primária).

description: Descrição do prato.

name: Nome do prato.

price: Preço do prato.

#3. Tabela orders

Descrição: Armazena informações sobre os pedidos realizados pelos clientes.

Colunas:

id: Identificador único do pedido (chave primária).

status: Status do pedido.

idclient: Identificador do cliente que fez o pedido (chave estrangeira referenciando client).

#4. Tabela orders_dish

Descrição: Tabela de relacionamento que associa pedidos aos pratos incluídos em cada pedido.

Colunas:

orders_id: Identificador do pedido (chave estrangeira referenciando orders).

dish_id: Identificador do prato (chave estrangeira referenciando dish).

Chave Primária: Composta por orders_id e dish_id.

Relacionamentos

client tem um relacionamento de um-para-muitos com orders.

orders tem um relacionamento de muitos-para-muitos com dish por meio da tabela orders_dish.

Diagrama de Entidade-Relacionamento (ER)

O diagrama abaixo ilustra as tabelas e seus relacionamentos:



Notas Técnicas

Todas as tabelas estão configuradas com a engine InnoDB para garantir suporte a transações e integridade referencial.

O conjunto de caracteres utilizado é utf8mb4 para suporte a uma ampla gama de caracteres.

As chaves estrangeiras garantem a integridade entre as tabelas, com a opção ON DELETE CASCADE para excluir registros dependentes quando um registro pai for removido.

Restrições de Uso:

Limites de tamanho: As colunas VARCHAR têm um limite de 255 caracteres. O campo price é do tipo DOUBLE para armazenar valores numéricos com precisão.

Permissões de acesso: As permissões de acesso devem ser configuradas no MySQL para permitir que diferentes usuários interajam com o banco de dados de acordo com suas funções. Por exemplo, o acesso de leitura pode ser restrito a usuários que não precisam modificar os dados, enquanto administradores podem ter permissões de leitura e escrita.

Todas as tabelas estão configuradas com a engine InnoDB para garantir suporte a transações e integridade referencial.

O conjunto de caracteres utilizado é utf8mb4 para suporte a uma ampla gama de caracteres.

As chaves estrangeiras garantem a integridade entre as tabelas, com a opção ON DELETE CASCADE para excluir registros dependentes quando um registro pai for removido.

Conclusão

Este banco de dados é ideal para sistemas de restaurante que requerem rastreamento de clientes, pedidos e pratos associados, facilitando o gerenciamento de pedidos e relatórios de vendas.