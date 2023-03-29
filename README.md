# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch` 
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.


## Notes
- prereqs: node, npm, cds, hana-cli, cf
- Open Templates
- Select CAP
- add cds models and data
- add srv cds
- cds build
- create hdi (cf create-service)
- create hdi key (cf create-service-key)
- cds deploy (see script in package.json)
- open dbx and see data (use key username and password to connect)
- cds watch hybrid to run local and see remote data
- cds add approuter (npm install inside app folder)
- fiori templates (add freestyle)
- create xsuaa service
- create xsuaa service keycf
- cds bind -2 vehicleapp-auth1:default
- fix xs-app json to include route authentication
- cds bind (cds bind --exec npm run app  )