TareasDrop
==========

trabajo practico de taller web 2 (unlam)

//En mysql generar 3 BDD (desarrollo, testing y producción)

create database Tareas        --production
create database TareasDev     --development
create database TareasTest    --test



//en la carpeta lib se encuentra el conector a la base de datos
mysql-connector-java-5.0.8-bin.jar

//CONFIGURACION DE ARCHIVOS DE CONF

//archivo BuildConfig.groovy descomentar dependences --> runtime 'mysql:mysql-connector-java:5.0.8'

//archivo DataSource.groovy

dataSource {
    pooled = true
	driverClassName="com.mysql.jdbc.Driver"
	username="root"
	password=""
	
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
	//cache.provider_class="com.opensymphony.oscache.hibernate.OSCacheProvider"
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
//    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" //"create-drop"
            url =  "jdbc:mysql://localhost:3306/tareasDev" 
        }
    }
    test {
        dataSource {
            dbCreate = "update"
           url = "jdbc:mysql://localhost:3306/tareasTest" 
        }
    }
    production {
        dataSource {
            dbCreate = "update"
			url= "jdbc:mysql://localhost:3306/tareas"
            
        }
    }
}


//archivo Config.groovy en environments se encuentra que base de dato esta ejecutando
