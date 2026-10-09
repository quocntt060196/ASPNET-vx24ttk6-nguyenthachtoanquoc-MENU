
CREATE DATABASE WebsiteNauAn;
GO

USE WebsiteNauAn;
GO

CREATE TABLE Users (
    UserId INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    Email VARCHAR(150) NOT NULL UNIQUE,
    Password NVARCHAR(255) NOT NULL,
    Role NVARCHAR(20) DEFAULT 'User',
    Avatar NVARCHAR(500),
    CreatedAt DATETIME DEFAULT GETDATE()
);

CREATE TABLE Categories (
    CategoryId INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(500),
    ImageUrl NVARCHAR(500)
);

CREATE TABLE Recipes (
    RecipeId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    CategoryId INT NOT NULL,
    Title NVARCHAR(200) NOT NULL,
    Description NVARCHAR(MAX),
    ImageUrl NVARCHAR(500),
    CookingTime INT,
    CreatedAt DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (UserId) REFERENCES Users(UserId),
    FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId)
);

CREATE TABLE Ingredients (
    IngredientId INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Unit NVARCHAR(50),
    Description NVARCHAR(500)
);

CREATE TABLE RecipeIngredients (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    RecipeId INT NOT NULL,
    IngredientId INT NOT NULL,
    Quantity NVARCHAR(100),
    FOREIGN KEY (RecipeId) REFERENCES Recipes(RecipeId),
    FOREIGN KEY (IngredientId) REFERENCES Ingredients(IngredientId)
);

CREATE TABLE Steps (
    StepId INT IDENTITY(1,1) PRIMARY KEY,
    RecipeId INT NOT NULL,
    StepNumber INT NOT NULL,
    Instruction NVARCHAR(MAX) NOT NULL,
    ImageUrl NVARCHAR(500),
    FOREIGN KEY (RecipeId) REFERENCES Recipes(RecipeId)
);

CREATE TABLE Comments (
    CommentId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    RecipeId INT NOT NULL,
    Content NVARCHAR(MAX) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (UserId) REFERENCES Users(UserId),
    FOREIGN KEY (RecipeId) REFERENCES Recipes(RecipeId)
);

CREATE TABLE Favorites (
    FavoriteId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    RecipeId INT NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (UserId) REFERENCES Users(UserId),
    FOREIGN KEY (RecipeId) REFERENCES Recipes(RecipeId)
);

CREATE TABLE Ratings (
    RatingId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    RecipeId INT NOT NULL,
    Score INT NOT NULL CHECK (Score BETWEEN 1 AND 5),
    CreatedAt DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (UserId) REFERENCES Users(UserId),
    FOREIGN KEY (RecipeId) REFERENCES Recipes(RecipeId)
);
