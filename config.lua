Config = {}

-- Drug labs configuration
Config.DrugLabs = {
    {
        name = 'La Castellane',
        coords = vector3(1234.56, -789.10, 54.32),
        organization = 'organization1',
        manager = 'manager1'
    },
    {
        name = 'Félix Pyat',
        coords = vector3(987.65, -432.10, 65.43),
        organization = 'organization2',
        manager = 'manager2'
    },
    {
        name = 'Oliviers',
        coords = vector3(654.32, -123.45, 76.89),
        organization = 'organization3',
        manager = 'manager3'
    },
    {
        name = 'Campagne Lévêque',
        coords = vector3(321.09, -654.32, 87.65),
        organization = 'organization4',
        manager = 'manager4'
    }
}

-- Drug selling configuration
Config.DrugSelling = {
    {
        name = 'La Castellane Selling',
        coords = vector3(1234.56, -789.10, 54.32),
        organization = 'organization1'
    },
    {
        name = 'Félix Pyat Selling',
        coords = vector3(987.65, -432.10, 65.43),
        organization = 'organization2'
    },
    {
        name = 'Oliviers Selling',
        coords = vector3(654.32, -123.45, 76.89),
        organization = 'organization3'
    },
    {
        name = 'Campagne Lévêque Selling',
        coords = vector3(321.09, -654.32, 87.65),
        organization = 'organization4'
    }
}

-- Drug production configuration
Config.DrugProduction = {
    time = 30000, -- Time in milliseconds to produce one unit of drug
    reward = 100 -- Reward for producing one unit of drug
}

-- Drug selling configuration
Config.DrugSellingPrice = 50 -- Price for selling one unit of drug