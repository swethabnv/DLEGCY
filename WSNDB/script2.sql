CREATE TABLE ManureType (
	TypeId BIGINT NOT NULL AUTO_INCREMENT,
	TypeName VARCHAR(100),
	PRIMARY KEY (TypeId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE LandRightType (
	TypeId BIGINT NOT NULL AUTO_INCREMENT,
	TypeName VARCHAR(200),
	PRIMARY KEY (TypeId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE BreedType (
	BreedTypeId BIGINT NOT NULL AUTO_INCREMENT,
	BreedTypeName VARCHAR(100),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	MaxPerYear INT,
	PRIMARY KEY (BreedTypeId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE SellingDetail (
	SaleDate DATE NOT NULL,
	PlantId BIGINT NOT NULL,
	BreedTypeId BIGINT NOT NULL,
	BreedGroupId BIGINT NOT NULL,
	HarvestDate DATE NOT NULL,
	SaleCrop NUMERIC,
	SalePrice NUMERIC,
	Amount NUMERIC,
	Buyer VARCHAR(200),
	RegionNo BIGINT NOT NULL,
	ProvinceNo BIGINT NOT NULL,
	DistrictNo BIGINT NOT NULL,
	SubDistrictNo BIGINT NOT NULL,
	BuyerAddress VARCHAR(200),
	PRIMARY KEY (PlantId,BreedTypeId,BreedGroupId,HarvestDate,SaleDate)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Region (
	RegionNo BIGINT NOT NULL AUTO_INCREMENT,
	RegionName VARCHAR(50),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	PRIMARY KEY (RegionNo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Province (
	ProvinceNo BIGINT NOT NULL,
	ThaiName VARCHAR(200),
	EngName VARCHAR(200),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	RegionNo BIGINT NOT NULL,
	PRIMARY KEY (RegionNo,ProvinceNo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE SubDistrict (
	SubDistrictNo BIGINT NOT NULL,
	ThaiName VARCHAR(200),
	EngName VARCHAR(200),
	RegionNo BIGINT NOT NULL,
	ProvinceNo BIGINT NOT NULL,
	DistrictNo BIGINT NOT NULL,
	PostCode INT,
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	PRIMARY KEY (RegionNo,ProvinceNo,DistrictNo,SubDistrictNo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE ChemicalType (
	TypeId BIGINT NOT NULL AUTO_INCREMENT,
	TypeName VARCHAR(100),
	PRIMARY KEY (TypeId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE District (
	DistrictNo BIGINT NOT NULL,
	ThaiName VARCHAR(200),
	EngName VARCHAR(200),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	RegionNo BIGINT NOT NULL,
	ProvinceNo BIGINT NOT NULL,
	PRIMARY KEY (RegionNo,ProvinceNo,DistrictNo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE UserAuthorize (
	UserName VARCHAR(20) NOT NULL,
	MenuId VARCHAR(20) NOT NULL,
	Authorize CHAR(3),
	PRIMARY KEY (UserName,MenuId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Asset (
	AssetId BIGINT NOT NULL AUTO_INCREMENT,
	AssetName VARCHAR(100),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	IsTotal CHAR(1),
	PRIMARY KEY (AssetId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE User (
	UserName VARCHAR(20) NOT NULL,
	Password VARCHAR(30),
	BranchCode BIGINT NOT NULL,
	FirstName VARCHAR(30),
	LastName VARCHAR(30),
	Email VARCHAR(60),
	Active CHAR(1),
	CreateDate DATE,
	CreateBy VARCHAR(30),
	LastUpdateDate DATE,
	LastUpdateBy VARCHAR(30),
	GroupUser VARCHAR(50),
	AbbrPrefix VARCHAR(20),
	PRIMARY KEY (UserName)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE CostDetail (
	CostId BIGINT NOT NULL,
	PlantId BIGINT NOT NULL,
	BreedTypeId BIGINT NOT NULL,
	BreedGroupId BIGINT NOT NULL,
	Amount NUMERIC NOT NULL,
	SEQ BIGINT,
	PRIMARY KEY (CostId,PlantId,BreedTypeId,BreedGroupId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE PlantDetail (
	PlantId BIGINT NOT NULL,
	BreedTypeId BIGINT NOT NULL,
	BreedGroupId BIGINT NOT NULL,
	QtyPerRai NUMERIC,
	CostPerRai NUMERIC,
	SEQ INT,
	PRIMARY KEY (PlantId,BreedTypeId,BreedGroupId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Prefix (
	AbbrPrefix VARCHAR(20) NOT NULL,
	FullPrefix VARCHAR(200),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	PRIMARY KEY (AbbrPrefix)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Login (
	UserName VARCHAR(20) NOT NULL,
	CountLogin INT,
	LastLoginDate DATETIME,
	PRIMARY KEY (UserName)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE LandRight (
	DocNo VARCHAR(100) NOT NULL,
	PlantId BIGINT NOT NULL,
	BreedTypeId BIGINT NOT NULL,
	BreedGroupId BIGINT NOT NULL,
	DocRai NUMERIC,
	DocNgan NUMERIC,
	DocWah NUMERIC,
	IrrigationIn CHAR(1),
	SEQ INT,
	TypeId BIGINT NOT NULL,
	RegionNo BIGINT NOT NULL,
	ProvinceNo BIGINT NOT NULL,
	DistrictNo BIGINT NOT NULL,
	SubDistrictNo BIGINT NOT NULL,
	PlantDate DATE,
	ForecastDate DATE,
	ForecastRecord NUMERIC,
	PublicMarketDate DATE,
	PublicCrop NUMERIC,
	RecordForecastBy VARCHAR(100),
	RecordForecastDate DATE,
	PlantRai INT,
	PlantNgan INT,
	PlantWah INT,
	OwnRai INT,
	OwnNgan INT,
	OwnWah INT,
	RentRai INT,
	RentNgan INT,
	RentWah INT,
	RentPrice NUMERIC,
	OwnRent CHAR(1),
	PRIMARY KEY (PlantId,BreedTypeId,BreedGroupId,DocNo,TypeId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE PlantManure (
	TypeId BIGINT NOT NULL,
	PlantId BIGINT NOT NULL,
	ManureName VARCHAR(100),
	Formula VARCHAR(100),
	QtyPerRai NUMERIC,
	CostPerRai NUMERIC,
	SEQ INT NOT NULL,
	PRIMARY KEY (TypeId,PlantId,SEQ)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE HarvestDetail (
	HarvestDate DATE NOT NULL,
	TotalHarvest NUMERIC,
	RemainSell NUMERIC,
	PlantId BIGINT NOT NULL,
	BreedTypeId BIGINT NOT NULL,
	BreedGroupId BIGINT NOT NULL,
	PRIMARY KEY (PlantId,BreedTypeId,BreedGroupId,HarvestDate)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE ProductionForecast (
	PFYear INT NOT NULL,
	RegionNo BIGINT NOT NULL,
	ProvinceNo BIGINT NOT NULL,
	BreedTypeId BIGINT NOT NULL,
	BreedGroupId BIGINT NOT NULL,
	IrrigationInAmount NUMERIC,
	IrrigationOutAmount NUMERIC,
	PRIMARY KEY (BreedTypeId,BreedGroupId,RegionNo,ProvinceNo,PFYear)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Cost (
	CostId BIGINT NOT NULL AUTO_INCREMENT,
	CostName VARCHAR(100),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	PRIMARY KEY (CostId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE AssetDetail (
	AssetId BIGINT NOT NULL,
	AssetDate DATE NOT NULL,
	PlantId BIGINT NOT NULL,
	Amount NUMERIC,
	SEQ BIGINT,
	PRIMARY KEY (AssetId,PlantId,AssetDate)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Menu (
	MenuId VARCHAR(20) NOT NULL,
	PMenuId VARCHAR(20) NOT NULL,
	SEQ INT,
	MText VARCHAR(200),
	MAction VARCHAR(200),
	Visible CHAR(1),
	DefaultVal CHAR(3),
	PRIMARY KEY (MenuId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE FarmerGroup (
	FarmerGroupId BIGINT NOT NULL AUTO_INCREMENT,
	FarmerGroupName VARCHAR(100),
	Target NUMERIC,
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	PRIMARY KEY (FarmerGroupId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE PlantChemical (
	TypeId BIGINT NOT NULL,
	PlantId BIGINT NOT NULL,
	Formula VARCHAR(100),
	ChemicalName VARCHAR(100),
	QtyPerRai NUMERIC,
	CostPerRai NUMERIC,
	SEQ INT NOT NULL,
	PRIMARY KEY (TypeId,PlantId,SEQ)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE EconomicBreed (
	BreedTypeId BIGINT NOT NULL,
	RegionNo BIGINT NOT NULL,
	ProvinceNo BIGINT NOT NULL,
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	PRIMARY KEY (BreedTypeId,RegionNo,ProvinceNo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE FarmerGroupAddress (
	FarmerGroupId BIGINT NOT NULL,
	RegionNo BIGINT NOT NULL,
	ProvinceNo BIGINT NOT NULL,
	DistrictNo BIGINT NOT NULL,
	SubDistrictNo BIGINT NOT NULL,
	PRIMARY KEY (FarmerGroupId,RegionNo,ProvinceNo,DistrictNo,SubDistrictNo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE FarmerGroupFarmer (
	FarmerGroupId BIGINT NOT NULL,
	IdCard VARCHAR(15) NOT NULL,
	EffectiveDate DATETIME NOT NULL,
	PRIMARY KEY (FarmerGroupId,IdCard,EffectiveDate)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Buyer (
	BuyerId BIGINT NOT NULL AUTO_INCREMENT,
	BuyerName VARCHAR(200),
	RegionNo BIGINT NOT NULL,
	ProvinceNo BIGINT NOT NULL,
	DistrictNo BIGINT NOT NULL,
	SubDistrictNo BIGINT NOT NULL,
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	PRIMARY KEY (BuyerId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Plant (
	PlantId BIGINT NOT NULL,
	CustomerNo VARCHAR(20),
	PlantYear INT,
	PlantNo INT,
	BranchCode BIGINT NOT NULL,
	IdCard VARCHAR(15) NOT NULL,
	EffectiveDate DATETIME NOT NULL,
	CreateDate DATETIME,
	CreateBy VARCHAR(30),
	RefPlantId BIGINT,
	BreedTypeId BIGINT,
	Flag CHAR(1),
	FarmerGroupId BIGINT,
	Target NUMERIC,
	PRIMARY KEY (PlantId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Branch (
	BranchCode BIGINT NOT NULL AUTO_INCREMENT,
	PBranchCode BIGINT NOT NULL,
	BranchName VARCHAR(200),
	Address VARCHAR(255),
	Tel VARCHAR(30),
	Fax VARCHAR(30),
	SEQ NUMERIC,
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	RegionNo BIGINT NOT NULL,
	ProvinceNo BIGINT NOT NULL,
	DistrictNo BIGINT NOT NULL,
	SubDistrictNo BIGINT NOT NULL,
	PRIMARY KEY (BranchCode)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE BreedGroup (
	BreedGroupId BIGINT NOT NULL,
	BreedTypeId BIGINT NOT NULL,
	BreedGroupName VARCHAR(100),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	Period INT,
	PlantPeriodFrom CHAR(2),
	PlantPeriodTo CHAR(2),
	ForcastPeriodFrom CHAR(2),
	ForcastPeriodTo CHAR(2),
	PRIMARY KEY (BreedTypeId,BreedGroupId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE CustomizeImage (
	ImageId BIGINT NOT NULL AUTO_INCREMENT,
	ImageType VARCHAR(20),
	ImageBlob LONGBLOB,
	ContentType VARCHAR(30),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	PRIMARY KEY (ImageId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Farmer (
	IdCard  VARCHAR(15) NOT NULL,
	EffectiveDate DATETIME NOT NULL,
	AbbrPrefix VARCHAR(20) NOT NULL,
	FirstName VARCHAR(30),
	LastName VARCHAR(30),
	AddressNo VARCHAR(50),
	Moo INT,
	PostCode INT,
	Tel VARCHAR(30),
	Mobile VARCHAR(30),
	CreateDate DATETIME,
	CreateBy VARCHAR(30),
	RegionNo BIGINT ,
	ProvinceNo BIGINT ,
	DistrictNo BIGINT ,
	SubDistrictNo BIGINT,
	BranchCode BIGINT,
	Soi VARCHAR(200),
	Street VARCHAR(200),
	PRIMARY KEY (IdCard,EffectiveDate)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE ProductionForecast ADD CONSTRAINT ProductionForecast_BreedGroup_FK FOREIGN KEY (BreedTypeId, BreedGroupId)
	REFERENCES BreedGroup (BreedTypeId, BreedGroupId)
	ON DELETE CASCADE;

ALTER TABLE Buyer ADD CONSTRAINT Buyer_SubDistrict_FK FOREIGN KEY (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	REFERENCES SubDistrict (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	ON DELETE RESTRICT;

ALTER TABLE Login ADD CONSTRAINT Login_User_FK FOREIGN KEY (UserName)
	REFERENCES User (UserName)
	ON DELETE CASCADE;


ALTER TABLE PlantDetail ADD CONSTRAINT PlantDetail_BreedGroup_FK FOREIGN KEY (BreedTypeId, BreedGroupId)
	REFERENCES BreedGroup (BreedTypeId, BreedGroupId)
	ON DELETE CASCADE;

ALTER TABLE ProductionForecast ADD CONSTRAINT ProductionForecast_Province_FK FOREIGN KEY (RegionNo, ProvinceNo)
	REFERENCES Province (RegionNo, ProvinceNo)
	ON DELETE CASCADE;

ALTER TABLE PlantManure ADD CONSTRAINT PlantManure_ManureType_FK FOREIGN KEY (TypeId)
	REFERENCES ManureType (TypeId)
	ON DELETE CASCADE;

ALTER TABLE Branch ADD CONSTRAINT Branch_Branch_FK FOREIGN KEY (PBranchCode)
	REFERENCES Branch (BranchCode)
	ON DELETE RESTRICT;

ALTER TABLE UserAuthorize ADD CONSTRAINT UserAuthorize_Menu_FK FOREIGN KEY (MenuId)
	REFERENCES Menu (MenuId)
	ON DELETE CASCADE;

ALTER TABLE FarmerGroupAddress ADD CONSTRAINT FarmerGroupAddress_FarmerGroup_FK FOREIGN KEY (FarmerGroupId)
	REFERENCES FarmerGroup (FarmerGroupId)
	ON DELETE CASCADE;

ALTER TABLE FarmerGroupFarmer ADD CONSTRAINT FarmerGroupFarmer_Farmer_FK FOREIGN KEY (IdCard, EffectiveDate)
	REFERENCES Farmer (IdCard, EffectiveDate)
	ON DELETE CASCADE;

ALTER TABLE BreedGroup ADD CONSTRAINT BreedGroup_BreedType_FK FOREIGN KEY (BreedTypeId)
	REFERENCES BreedType (BreedTypeId)
	ON DELETE CASCADE;

ALTER TABLE PlantChemical ADD CONSTRAINT PlantChemical_ChemicalType_FK FOREIGN KEY (TypeId)
	REFERENCES ChemicalType (TypeId)
	ON DELETE CASCADE;

ALTER TABLE SellingDetail ADD CONSTRAINT SellingDetail_HarvestDetail_FK FOREIGN KEY (PlantId, BreedTypeId, BreedGroupId, HarvestDate)
	REFERENCES HarvestDetail (PlantId, BreedTypeId, BreedGroupId, HarvestDate)
	ON DELETE CASCADE;

ALTER TABLE District ADD CONSTRAINT District_Province_FK FOREIGN KEY (RegionNo, ProvinceNo)
	REFERENCES Province (RegionNo, ProvinceNo)
	ON DELETE CASCADE;

ALTER TABLE AssetDetail ADD CONSTRAINT AssetDetail_Asset_FK FOREIGN KEY (AssetId)
	REFERENCES Asset (AssetId)
	ON DELETE CASCADE;

ALTER TABLE SellingDetail ADD CONSTRAINT SellingDetail_SubDistrict_FK FOREIGN KEY (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	REFERENCES SubDistrict (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	ON DELETE RESTRICT;

ALTER TABLE PlantManure ADD CONSTRAINT PlantManure_Plant_FK FOREIGN KEY (PlantId)
	REFERENCES Plant (PlantId)
	ON DELETE CASCADE;

ALTER TABLE CostDetail ADD CONSTRAINT CostDetail_Cost_FK FOREIGN KEY (CostId)
	REFERENCES Cost (CostId)
	ON DELETE CASCADE;

ALTER TABLE AssetDetail ADD CONSTRAINT AssetDetail_Plant_FK FOREIGN KEY (PlantId)
	REFERENCES Plant (PlantId)
	ON DELETE CASCADE;

ALTER TABLE CostDetail ADD CONSTRAINT CostDetail_PlantDetail_FK FOREIGN KEY (PlantId, BreedTypeId, BreedGroupId)
	REFERENCES PlantDetail (PlantId, BreedTypeId, BreedGroupId)
	ON DELETE CASCADE;

ALTER TABLE FarmerGroupAddress ADD CONSTRAINT FarmerGroupAddress_SubDistrict_FK FOREIGN KEY (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	REFERENCES SubDistrict (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	ON DELETE CASCADE;

ALTER TABLE Farmer ADD CONSTRAINT Farmer_Prefix_FK FOREIGN KEY (AbbrPrefix)
	REFERENCES Prefix (AbbrPrefix)
	ON DELETE RESTRICT;

ALTER TABLE EconomicBreed ADD CONSTRAINT EconomicBreed_BreedType_FK FOREIGN KEY (BreedTypeId)
	REFERENCES BreedType (BreedTypeId)
	ON DELETE CASCADE;

ALTER TABLE PlantDetail ADD CONSTRAINT PlantDetail_Plant_FK FOREIGN KEY (PlantId)
	REFERENCES Plant (PlantId)
	ON DELETE CASCADE;

ALTER TABLE LandRight ADD CONSTRAINT LandRight_LandRightType_FK FOREIGN KEY (TypeId)
	REFERENCES LandRightType (TypeId)
	ON DELETE RESTRICT;

ALTER TABLE PlantChemical ADD CONSTRAINT PlantChemical_Plant_FK FOREIGN KEY (PlantId)
	REFERENCES Plant (PlantId)
	ON DELETE CASCADE;

ALTER TABLE Plant ADD CONSTRAINT Plant_Branch_FK FOREIGN KEY (BranchCode)
	REFERENCES Branch (BranchCode)
	ON DELETE RESTRICT;

ALTER TABLE LandRight ADD CONSTRAINT LandRight_SubDistrict_FK FOREIGN KEY (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	REFERENCES SubDistrict (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	ON DELETE RESTRICT;

ALTER TABLE UserAuthorize ADD CONSTRAINT UserAuthorize_User_FK FOREIGN KEY (UserName)
	REFERENCES User (UserName)
	ON DELETE CASCADE;

ALTER TABLE Plant ADD CONSTRAINT Plant_Farmer_FK FOREIGN KEY (IdCard, EffectiveDate)
	REFERENCES Farmer (IdCard, EffectiveDate)
	ON DELETE RESTRICT;

ALTER TABLE Menu ADD CONSTRAINT Menu_Menu_FK FOREIGN KEY (PMenuId)
	REFERENCES Menu (MenuId)
	ON DELETE RESTRICT;

ALTER TABLE SubDistrict ADD CONSTRAINT SubDistrict_District_FK FOREIGN KEY (RegionNo, ProvinceNo, DistrictNo)
	REFERENCES District (RegionNo, ProvinceNo, DistrictNo)
	ON DELETE CASCADE;

ALTER TABLE FarmerGroupFarmer ADD CONSTRAINT FarmerGroupFarmer_FarmerGroup_FK FOREIGN KEY (FarmerGroupId)
	REFERENCES FarmerGroup (FarmerGroupId)
	ON DELETE CASCADE;

ALTER TABLE LandRight ADD CONSTRAINT LandRight_PlantDetail_FK FOREIGN KEY (PlantId, BreedTypeId, BreedGroupId)
	REFERENCES PlantDetail (PlantId, BreedTypeId, BreedGroupId)
	ON DELETE CASCADE;

ALTER TABLE HarvestDetail ADD CONSTRAINT HarvestDetail_PlantDetail_FK FOREIGN KEY (PlantId, BreedTypeId, BreedGroupId)
	REFERENCES PlantDetail (PlantId, BreedTypeId, BreedGroupId)
	ON DELETE CASCADE;

ALTER TABLE User ADD CONSTRAINT User_Branch_FK FOREIGN KEY (BranchCode)
	REFERENCES Branch (BranchCode)
	ON DELETE RESTRICT;

ALTER TABLE Branch ADD CONSTRAINT Branch_SubDistrict_FK FOREIGN KEY (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	REFERENCES SubDistrict (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	ON DELETE RESTRICT;

ALTER TABLE EconomicBreed ADD CONSTRAINT EconomicBreed_Province_FK FOREIGN KEY (RegionNo, ProvinceNo)
	REFERENCES Province (RegionNo, ProvinceNo)
	ON DELETE CASCADE;

ALTER TABLE Province ADD CONSTRAINT Province_Region_FK FOREIGN KEY (RegionNo)
	REFERENCES Region (RegionNo)
	ON DELETE CASCADE;


