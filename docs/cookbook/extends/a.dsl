workspace extends https://raw.githubusercontent.com/structurizr/dsl/master/docs/cookbook/extends/system-landscape.dsl {

    model {
        !ref a {
            webapp = container "Web Application"
            database = container "Database"
            
            webapp -> b "Gets data X from"
            webapp -> database "Reads from and writes to"
        }
    }
    
    views {
        systemContext a "SystemContext-A" {
            include *
            autolayout lr
        }

        container a "Containers-A" {
            include *
            autolayout lr
        }
    }
    
}