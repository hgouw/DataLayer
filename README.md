# DataLayer
A project to experiment with ADO.NET Entity Data Model (EDMX file)
1. Add New Item: ADO.NET Entity Data Model
   a. Name: DModel
   b. Choose Model Contents: EF Designer from database
   c. New Connection
      - Server name: LNGSYDL-600244\SQLEXPRESS
      - Authentication: Windows Authentication
      - Select or enter a database name: ContentWho
   d. Version of Entity Framework: Entity Framework 5.0
   e. Tables:
      - Jurisdiction
      - PracticeArea
      - Product
      - Segment
      - UserList
   f. Model Namespace: DataLayer.Model