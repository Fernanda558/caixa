CREATE DATABASE caixa;
USE caixa;

CREATE TABLE Clientes(
id INT PRIMARY KEY IDENTITY(1,10),
nome VARCHAR(255) NOT NULL,
CPF VARCHAR(15) NOT NULL,
Data_nascimento DATE NOT NULL,
);

SELECT * FROM Clientes
DROP TABLE Clientes
  
INSERT INTO Clientes(nome,CPF,Data_nascimento)
 VALUES ('ANA SARA SANTOS DO NASCIMENTO', '380.628.632-80' ,'17-11-2009'),
 ('KELVEN SALES DE MORAIS', '245.387.298-88', '30-04-2008'),
 ('JULIANA SILVA RODRIGUES' , '876.609.289-37' , '26-02-2010'),
 ('ISABELE LORRANY BARRETO MATIAS' , '432.589.987-00' , '20-04-2004'),
 ('RONISSON SILVA DO COUTO', '245.879.987-28' , '04-10-2008'),
 ('JHENIFER GURGEL DE LIMA' , '678.393.398-09' , '18-04-2006'),
 ('FERNANDA MATOS NASCIMENTO' , '378.087.287-11' , '25-07-2008'),
 ('ALINE SOUSA BEZERRA' , '267.908.342-47' , '16-12-2007'),
 ('PYETRA MENEZES' , '356.987.098-77' , '17-08-2009') ,
 ('VITORIA AKYLLA CARLEO SOARES LIMA', '090.548.208-37' ,'25-02-2009')

 
CREATE TABLE Contas(
numero_conta INT PRIMARY KEY,
cliente_id INT,
tipo_conta VARCHAR(200),
saldo DECIMAL(10,2),
FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
)

SELECT * FROM Contas


INSERT INTO Contas(numero_conta,cliente_id, tipo_conta,saldo)
VALUES (1008, 1, 'Corrente', 1500.00),
(1010, 11, 'Poupança', 2870.00),
(1011, 21, 'Corrente', 500.00),
(1012, 31, 'Poupança', 300.00),
(1005, 41, 'poupança', 70.00),
(1014, 51, 'Corrente', 180.00),
(1015, 61, 'Poupança', 200.00),
(1009, 71, 'Corrente', 100.00),
(1003, 81, 'corrente', 270.00),
(1001, 91, 'Corrente', 9060.00);


CREATE TABLE transacoes(
id INT PRIMARY KEY IDENTITY,
conta_origem INT,
conta_destino INT,
valor DECIMAL(10,2) NOT NULL,
data_hora DATETIME NOT NULL,
FOREIGN KEY (conta_origem) REFERENCES contas(numero_conta),
FOREIGN KEY (conta_destino) REFERENCES contas(numero_conta)
);

SELECT * FROM transacoes

INSERT INTO transacoes(conta_origem,conta_destino,valor,data_hora)
VALUES ('1008','1010', '1500.00', '11-08-2025 10:20:00'),
('1011','1012', '20.00', '12-08-2025 11:00:00'),
('1005','1014', '50.00', '19-08-2025 09:29:00'),
('1015','1009', '30.00', '16-06-2025 13:00:00'),
('1003','1001', '7.00', '18-09-2025 08:35:00'),
('1014','1005', '18.00', '09-07-2025 07:11:00')

DROP TABLE transacoes