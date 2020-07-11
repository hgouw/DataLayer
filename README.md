# DataLayer
A project to experiment with ADO.NET Entity Data Model (EDMX file)
1. Add New Item: ADO.NET Entity Data Model
   - Name: DModel
   - Choose Model Contents: EF Designer from database
   - New Connection
     - Server name: LNGSYDL-600244\SQLEXPRESS
     - Authentication: Windows Authentication
     - Select or enter a database name: ContentWho
   - Version of Entity Framework: Entity Framework 5.0
   - Tables:
     - Jurisdiction
     - PracticeArea
     - Product
     - Segment
     - UserList
   - Model Namespace: DataLayer.Model
2. Run the SQL script file on database ContentWho
3. Open DModel.edmx and select Update Model from Database
   - Added the new table ProductOwner
