CREATE TABLE IF NOT EXISTS drug_labs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    coords VARCHAR(255) NOT NULL,
    organization VARCHAR(255) NOT NULL,
    manager VARCHAR(255) NOT NULL
);

INSERT INTO drug_labs (name, coords, organization, manager) VALUES
    ('La Castellane', '1234.56, -789.10, 54.32', 'organization1', 'manager1'),
    ('Félix Pyat', '987.65, -432.10, 65.43', 'organization2', 'manager2'),
    ('Oliviers', '654.32, -123.45, 76.89', 'organization3', 'manager3'),
    ('Campagne Lévêque', '321.09, -654.32, 87.65', 'organization4', 'manager4');

CREATE TABLE IF NOT EXISTS drug_selling (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    coords VARCHAR(255) NOT NULL,
    organization VARCHAR(255) NOT NULL
);

INSERT INTO drug_selling (name, coords, organization) VALUES
    ('La Castellane Selling', '1234.56, -789.10, 54.32', 'organization1'),
    ('Félix Pyat Selling', '987.65, -432.10, 65.43', 'organization2'),
    ('Oliviers Selling', '654.32, -123.45, 76.89', 'organization3'),
    ('Campagne Lévêque Selling', '321.09, -654.32, 87.65', 'organization4');