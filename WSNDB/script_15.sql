CREATE TABLE PlantChemical (
	PlantChemicalId BIGINT NOT NULL AUTO_INCREMENT,
	Formula VARCHAR(100),
	ChemicalName VARCHAR(100),
	QtyPerRai NUMERIC,
	CostPerRai NUMERIC,
	CSEQ INT NOT NULL,
	Period VARCHAR(100),
	DateUse DATE,
	PlantId BIGINT NOT NULL,
	BreedTypeId BIGINT NOT NULL,
	BreedGroupId BIGINT NOT NULL,
	DocNo VARCHAR(100) NOT NULL,
	TypeId BIGINT NOT NULL,
	SEQ INT NOT NULL,
	ChemicalTypeId BIGINT NOT NULL,
	PRIMARY KEY (PlantChemicalId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE SellingDetail (
	PlantId BIGINT NOT NULL,
	BreedTypeId BIGINT NOT NULL,
	BreedGroupId BIGINT NOT NULL,
	DocNo VARCHAR(100) NOT NULL,
	TypeId BIGINT NOT NULL,
	SEQ INT NOT NULL,
	SaleDate DATE NOT NULL,
	SaleSeq BIGINT NOT NULL,
	SaleCrop NUMERIC(10,0),
	SalePrice NUMERIC(12,2),
	Amount NUMERIC,
	Buyer VARCHAR(200),
	RegionNo BIGINT NOT NULL,
	ProvinceNo BIGINT NOT NULL,
	DistrictNo BIGINT NOT NULL,
	SubDistrictNo BIGINT NOT NULL,
	BuyerAddress VARCHAR(200),
	Soi VARCHAR(200),
	Tel VARCHAR(20),
	Moo INT,
	BuyerId BIGINT NOT NULL,
	PRIMARY KEY (PlantId,BreedTypeId,BreedGroupId,DocNo,TypeId,SEQ,SaleDate,SaleSeq)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Apply to Production
CREATE TABLE PlantDetail (
	PlantId BIGINT NOT NULL,
	BreedTypeId BIGINT NOT NULL,
	BreedGroupId BIGINT NOT NULL,
	QtyPerRai NUMERIC,
	CostPerRai NUMERIC,
	SEQ INT NOT NULL,
	DocNo VARCHAR(100) NOT NULL,
	TypeId BIGINT NOT NULL,
	SeedFrom VARCHAR(200),
	SeedSelect VARCHAR(100),
	PlantObjective VARCHAR(200),
	Qualification VARCHAR(200),
	Standard CHAR(1),
	PlantMethod VARCHAR(100),
	PrepareArea VARCHAR(200),
	PrepareAreaOther VARCHAR(255),
	PrepareManure VARCHAR(100),
	PlantRai INT,
	PlantNgan INT,
	PlantWah INT,
	PlantDate DATE,
	ForecastDate DATE,
	ForecastRecord NUMERIC(12 , 2),
	PublicMarketDate DATE,
	PublicCrop NUMERIC(12 , 2),
	RecordForecastBy VARCHAR(100),
	RecordForecastDate DATE,
	CooperativeId BIGINT,
	NoOfSeed INT,
	PRIMARY KEY (PlantId,BreedTypeId,BreedGroupId,DocNo,TypeId,SEQ)
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

CREATE TABLE UserAuthorize (
	UserName VARCHAR(20) NOT NULL,
	MenuId VARCHAR(20) NOT NULL,
	Authorize CHAR(3),
	PRIMARY KEY (UserName,MenuId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE HarvestDetail (
	HarvestDate DATE NOT NULL,
	TotalHarvest NUMERIC,
	RemainSell NUMERIC,
	PlantId BIGINT NOT NULL,
	BreedTypeId BIGINT NOT NULL,
	BreedGroupId BIGINT NOT NULL,
	DocNo VARCHAR(100) NOT NULL,
	TypeId BIGINT NOT NULL,
	SEQ INT NOT NULL,
	PRIMARY KEY (PlantId,BreedTypeId,BreedGroupId,DocNo,TypeId,SEQ,HarvestDate)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Apply to Production
CREATE TABLE LandRight (
	DocNo VARCHAR(100) NOT NULL,
	PlantId BIGINT NOT NULL,
	DocRai NUMERIC,
	DocNgan NUMERIC,
	DocWah NUMERIC,
	IrrigationIn CHAR(1),
	SEQ INT NOT NULL,
	TypeId BIGINT NOT NULL,
	RegionNo BIGINT NOT NULL,
	ProvinceNo BIGINT NOT NULL,
	DistrictNo BIGINT NOT NULL,
	SubDistrictNo BIGINT NOT NULL,
	RentPrice NUMERIC(12 , 2),
	OwnRent CHAR(1),
	AddressNo VARCHAR(50),
	Moo INT,
	IrrigationAreaId BIGINT,
	LandStatus VARCHAR(100),
	LandType VARCHAR(100),
	LandTypeOther VARCHAR(100),
	PRIMARY KEY (PlantId,DocNo,TypeId,SEQ)
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
	Manager VARCHAR(50),
	Moo INT,
	Soi VARCHAR(200),
	Street VARCHAR(200),
	PostCode INT,
	BranchType CHAR(1),
	PRIMARY KEY (BranchCode)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE CostDetail (
	CostId BIGINT NOT NULL,
	PlantId BIGINT NOT NULL,
	BreedTypeId BIGINT NOT NULL,
	BreedGroupId BIGINT NOT NULL,
	Amount NUMERIC(12,2) NOT NULL,
	SEQ INT NOT NULL,
	DocNo VARCHAR(100) NOT NULL,
	TypeId BIGINT NOT NULL,
	CostDate DATE NOT NULL,
	PRIMARY KEY (CostId,PlantId,BreedTypeId,BreedGroupId,DocNo,TypeId,SEQ)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Prefix (
	AbbrPrefix VARCHAR(20) NOT NULL,
	FullPrefix VARCHAR(200),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	PRIMARY KEY (AbbrPrefix)
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

CREATE TABLE Cost (
	CostId BIGINT NOT NULL AUTO_INCREMENT,
	CostName VARCHAR(100),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	PRIMARY KEY (CostId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE FarmerGroup (
	FarmerGroupId BIGINT NOT NULL AUTO_INCREMENT,
	FarmerGroupName VARCHAR(100),
	Target NUMERIC(12,2),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	BranchCode BIGINT,
	FarmerGroupType CHAR(1),
	Objective TEXT,
	AddressNo VARCHAR(10),
	Moo INT,
	Soi VARCHAR(200),
	Road VARCHAR(200),
	Mobile VARCHAR(30),
	Tel VARCHAR(30),
	Fax VARCHAR(30),
	Village VARCHAR(200),
	CreateDate DATETIME,
	CreateBy VARCHAR(30),
	PRIMARY KEY (FarmerGroupId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Login (
	UserName VARCHAR(20) NOT NULL,
	CountLogin INT,
	LastLoginDate DATETIME,
	PRIMARY KEY (UserName)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE BreedGroup (
	BreedGroupId BIGINT NOT NULL,
	BreedGroupName VARCHAR(100),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	BreedTypeId BIGINT NOT NULL,
	Period INT,
	PlantPeriodFrom CHAR(2),
	PlantPeriodTo CHAR(2),
	ForcastPeriodFrom CHAR(2),
	ForcastPeriodTo CHAR(2),
	BreedCategory VARCHAR(100),
	PRIMARY KEY (BreedTypeId,BreedGroupId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Buyer (
	BuyerId BIGINT NOT NULL,
	BuyerName VARCHAR(200),
	RegionNo BIGINT NOT NULL,
	ProvinceNo BIGINT NOT NULL,
	DistrictNo BIGINT NOT NULL,
	SubDistrictNo BIGINT NOT NULL,
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	AddressNo VARCHAR(50),
	Moo INT,
	Soi VARCHAR(200),
	Road VARCHAR(200),
	Mobile VARCHAR(30),
	Tel VARCHAR(30),
	Fax VARCHAR(30),
	PlaceName VARCHAR(200),
	PlaceAddressNo VARCHAR(50),
	PlaceMoo INT,
	PlaceSoi VARCHAR(200),
	PlaceRoad VARCHAR(200),
	PlaceRegionNo BIGINT NOT NULL,
	PlaceProvinceNo BIGINT NOT NULL,
	PlaceDistrictNo BIGINT NOT NULL,
	PlaceSubDistrictNo BIGINT NOT NULL,
	BreedTypeId BIGINT,
	BreedGroupId BIGINT,
	Qualification TEXT,
	Quantity NUMERIC(10 , 2),
	PaymentCondition VARCHAR(200),
	PRIMARY KEY (BuyerId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Farmer (
	IdCard VARCHAR(15) NOT NULL,
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
	RegionNo BIGINT NOT NULL,
	ProvinceNo BIGINT NOT NULL,
	DistrictNo BIGINT NOT NULL,
	SubDistrictNo BIGINT NOT NULL,
	BranchCode BIGINT,
	Soi VARCHAR(200),
	Street VARCHAR(200),
	FarmerGroupId BIGINT,
	PlantYear INT,
	PlantNo INT,
	Email VARCHAR(60),
	Village VARCHAR(200),
	PRIMARY KEY (IdCard,EffectiveDate)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE PlantManure (
	PlantManureId BIGINT NOT NULL AUTO_INCREMENT,
	ManureName VARCHAR(100),
	Formula VARCHAR(100),
	QtyPerRai NUMERIC,
	CostPerRai NUMERIC,
	MSEQ INT NOT NULL,
	Period VARCHAR(100),
	DateUse DATE,
	ManureStatus CHAR(1),
	PlantId BIGINT NOT NULL,
	BreedTypeId BIGINT NOT NULL,
	BreedGroupId BIGINT NOT NULL,
	DocNo VARCHAR(100) NOT NULL,
	TypeId BIGINT NOT NULL,
	SEQ INT NOT NULL,
	ManureTypeId BIGINT NOT NULL,
	PRIMARY KEY (PlantManureId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE AssetDetail (
	AssetId BIGINT NOT NULL,
	AssetDate DATE NOT NULL,
	PlantId BIGINT NOT NULL,
	Amount NUMERIC(12,2),
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

CREATE TABLE BankBranch (
	BranchCode BIGINT NOT NULL,
	BankId BIGINT NOT NULL,
	PRIMARY KEY (BranchCode,BankId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE BreedType (
	BreedTypeId BIGINT NOT NULL AUTO_INCREMENT,
	BreedTypeName VARCHAR(100),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	MaxPerYear INT,
	PRIMARY KEY (BreedTypeId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE PrepareArea (
	PrepareAreaId BIGINT NOT NULL,
	PrepareAreaName VARCHAR(200),
	PPrepareAreaId BIGINT NOT NULL,
	BreedTypeId BIGINT NOT NULL,
	BreedGroupId BIGINT NOT NULL,
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	PRIMARY KEY (PrepareAreaId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE FarmerGroupChild (
	FarmerGroupId BIGINT NOT NULL,
	ChildFarmerGroupId BIGINT NOT NULL,
	PRIMARY KEY (FarmerGroupId,ChildFarmerGroupId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE FarmerGroupFarmer (
	FarmerGroupId BIGINT NOT NULL,
	IdCard VARCHAR(15) NOT NULL,
	EffectiveDate DATETIME NOT NULL,
	PRIMARY KEY (FarmerGroupId,IdCard,EffectiveDate)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE PrepareManure (
	PrepareManureId BIGINT NOT NULL AUTO_INCREMENT,
	PrepareManureName VARCHAR(200),
	PrepareManureType CHAR(1),
	PRIMARY KEY (PrepareManureId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE PlantMethod (
	PlantMethodId BIGINT NOT NULL AUTO_INCREMENT,
	PlantMethodName VARCHAR(200),
	BreedTypeId BIGINT NOT NULL,
	BreedGroupId BIGINT NOT NULL,
	PRIMARY KEY (PlantMethodId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Asset (
	AssetId BIGINT NOT NULL AUTO_INCREMENT,
	AssetName VARCHAR(100),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	IsTotal CHAR(1),
	PRIMARY KEY (AssetId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Bank (
	BankId BIGINT NOT NULL AUTO_INCREMENT,
	BankName VARCHAR(200) NOT NULL,
	CreateDate DATETIME,
	CreateBy VARCHAR(30),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	PRIMARY KEY (BankId)
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

CREATE TABLE LandRightType (
	TypeId BIGINT NOT NULL AUTO_INCREMENT,
	TypeName VARCHAR(200),
	PRIMARY KEY (TypeId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE FarmerGroupAddress (
	FarmerGroupId BIGINT NOT NULL,
	RegionNo BIGINT NOT NULL,
	ProvinceNo BIGINT NOT NULL,
	DistrictNo BIGINT NOT NULL,
	SubDistrictNo BIGINT NOT NULL,
	PRIMARY KEY (FarmerGroupId,RegionNo,ProvinceNo,DistrictNo,SubDistrictNo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE EconomicBreed (
	BreedTypeId BIGINT NOT NULL,
	RegionNo BIGINT NOT NULL,
	ProvinceNo BIGINT NOT NULL,
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	PRIMARY KEY (BreedTypeId,RegionNo,ProvinceNo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IrrigationArea (
	IrrigationAreaId BIGINT NOT NULL AUTO_INCREMENT,
	IrrigationAreaName VARCHAR(200),
	PRIMARY KEY (IrrigationAreaId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE LandType (
	LandTypeId BIGINT NOT NULL AUTO_INCREMENT,
	LandTypeName VARCHAR(200),
	PRIMARY KEY (LandTypeId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE LandStatus (
	LandStatusId BIGINT NOT NULL AUTO_INCREMENT,
	LandStatusName VARCHAR(200),
	PRIMARY KEY (LandStatusId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE CustomizeImage (
	ImageId BIGINT NOT NULL,
	ImageType VARCHAR(20) DEFAULT '',
	ImageBlob LONGBLOB,
	ContentType VARCHAR(30),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	PRIMARY KEY (ImageId)
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

CREATE TABLE User (
	UserName VARCHAR(20) NOT NULL,
	Password VARCHAR(30),
	BranchCode BIGINT,
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
	Tel VARCHAR(30),
	Mobile VARCHAR(30),
	RegionNo BIGINT ,
	ProvinceNo BIGINT ,
	DistrictNo BIGINT,
	SubDistrictNo BIGINT,
	Level INT,
	PRIMARY KEY (UserName)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE SeedSelect (
	SeedSelectId BIGINT NOT NULL AUTO_INCREMENT,
	SeedSelectName VARCHAR(200),
	BreedTypeId BIGINT NOT NULL,
	BreedGroupId BIGINT NOT NULL,
	PRIMARY KEY (SeedSelectId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Plant (
	PlantId BIGINT NOT NULL AUTO_INCREMENT,
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
	Target NUMERIC (12,2),
	MemberNo VARCHAR(50),
	AccountName VARCHAR(50),
	AccountNo VARCHAR(50),
	BankId BIGINT NOT NULL,
	Season VARCHAR(30),
	Certificate VARCHAR(50),
	RegisterNo VARCHAR(30),
	BookNo INT,
	DocumentNo VARCHAR(30),
	RegisterDate DATE,
	RegisterBy VARCHAR(100),
	FarmerGroupId2 BIGINT,
	MemberNo2 VARCHAR(50),
	Target2 NUMERIC(12 , 2),
	FTA CHAR(1),
	PLANTSTATUS CHAR(1),
	REASON	TEXT,
	PRIMARY KEY (PlantId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE ChemicalType (
	TypeId BIGINT NOT NULL AUTO_INCREMENT,
	TypeName VARCHAR(100),
	PRIMARY KEY (TypeId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE ManureType (
	TypeId BIGINT NOT NULL AUTO_INCREMENT,
	TypeName VARCHAR(100),
	PRIMARY KEY (TypeId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE FarmerGroupTeam (
	FarmerGroupTeamId BIGINT NOT NULL AUTO_INCREMENT,
	FirstName VARCHAR(30),
	LastName VARCHAR(30),
	Position VARCHAR(100),
	FarmerGroupId BIGINT NOT NULL,
	PRIMARY KEY (FarmerGroupTeamId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE FarmerFamily (
	IdCard VARCHAR(15) NOT NULL,
	PlantId BIGINT NOT NULL,
	FirstName VARCHAR(30),
	LastName VARCHAR(30),
	PRIMARY KEY (PlantId,IdCard)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


---------------------------------------------
CREATE TABLE LandCheck (
	LandCheckId BIGINT NOT NULL AUTO_INCREMENT,
	PlantYear INT,
	PlantNo INT,
	IdCard VARCHAR(15),
	FirstName VARCHAR(30),
	LastName VARCHAR(30),
	TypeId BIGINT,
	DocNo VARCHAR(100),
	DocRai NUMERIC(13 , 2),
	DocNgan NUMERIC(13 , 2),
	DocWah NUMERIC(13 , 2),
	CheckDate DATE,
	CheckTime CHAR(5),
	Result CHAR(1),
	Remark TEXT,
	CheckBy VARCHAR(100),
	LastUpdateDate DATETIME,
	LastUpdateBy VARCHAR(30),
	BreedTypeId BIGINT,
	Owner VARCHAR(100),
	Committee1 VARCHAR(100),
	Committee2 VARCHAR(100),
	CheckPeriodId INT,
	RefPlantId BIGINT,
	PRIMARY KEY (LandCheckId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE Coordinates (
	CoordinatesId BIGINT NOT NULL AUTO_INCREMENT,
	Latitude VARCHAR(30),
	Longitude VARCHAR(30),
	SEQ INT,
	PlantYear INT,
	PlantNo INT,
	IdCard VARCHAR(15),
	TypeId BIGINT,
	DocNo VARCHAR(100),
	BreedTypeId BIGINT,
	PRIMARY KEY (CoordinatesId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE LandCheckImages (
	ImageId BIGINT  NOT NULL AUTO_INCREMENT,
	ImageName VARCHAR(150),
	ImageBlob LONGBLOB,
	ContentType VARCHAR(30),
	LandCheckId BIGINT,
	SEQ INT,
	PRIMARY KEY (ImageId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE CheckPeriod (
	CheckPeriodId INT NOT NULL,
	Description VARCHAR(200),
	PRIMARY KEY (CheckPeriodId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE MixedBreedType (
	MixedBreedTypeId INT NOT NULL,
	Description VARCHAR(200),
	CheckPeriodId INT,
	PRIMARY KEY (MixedBreedTypeId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE MixedBreedTypeChild (
	ChildId INT,
	Description VARCHAR(200),
	MixedBreedTypeId INT
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE DiseaseType (
	DiseaseTypeId INT NOT NULL,
	Description VARCHAR(200),
	DiseaseChildId INT,
	PRIMARY KEY (DiseaseTypeId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE CheckingDiseaseChild (
	DiseaseChildId INT NOT NULL,
	Description VARCHAR(200),
	CheckingDiseaseId INT,
	PRIMARY KEY (DiseaseChildId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE CheckingDisease (
	CheckingDiseaseId INT NOT NULL,
	Description VARCHAR(200),
	PRIMARY KEY (CheckingDiseaseId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE LandCheckHarvest (
	LandCheckHarvestId BIGINT NOT NULL AUTO_INCREMENT,
	LandCheckId BIGINT,
	SEQ INT,
	Observers VARCHAR(250),
	ObserveDate DATE,
	Dain CHAR(1),
	DainRemark VARCHAR(250),
	DainDate DATE,
	HarvestQuality CHAR(1),
	HarvestQualityDate DATE,
	FarmStatus CHAR(1),
	FarmStatusDate DATE,
	Harvester CHAR(1),
	HarvesterDate DATE,
	Cleaning CHAR(1),
	CleaningDate DATE,
	Packaging CHAR(1),
	PackagingDate DATE,
	Moving CHAR(1),
	MovingDate DATE,
	TotalHarvest NUMERIC(10 , 2),
	KeepHarvest NUMERIC(10 , 2),
	Sell NUMERIC(10 , 2),
	Result CHAR(1),
	Checker VARCHAR(30),
	SalePrice NUMERIC(10 , 2),
	Remark TEXT,
	PRIMARY KEY (LandCheckHarvestId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE LandCheckDisease (
	LandCheckDiseaseId BIGINT NOT NULL AUTO_INCREMENT,
	LandCheckId BIGINT,
	SEQ INT,
	CheckDate DATE,
	CheckingDiseaseId INT,
	DiseaseChildId INT,
	DiseaseOther VARCHAR(200),
	DiseaseTypeId INT,
	Level CHAR(1),
	TradingName VARCHAR(100),
	CommonName VARCHAR(100),
	DangerousName VARCHAR(100),
	ManufactureDate DATE,
	ExpireDate DATE,
	SourceBuy VARCHAR(100),
	UseDate DATE,
	UseRate1 NUMERIC(12 , 2),
	UseRate2 NUMERIC(12 , 2),
	Result CHAR(1),
	Remark TEXT,
	Checker VARCHAR(30),
	PRIMARY KEY (LandCheckDiseaseId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE LandCheckMixed (
	LandCheckMixedId BIGINT NOT NULL AUTO_INCREMENT,
	LandCheckId BIGINT,
	SEQ INT,
	CheckDate DATE,
	MixedBreedTypeId INT,
	ChildId INT,
	EliminateMixedBreedId INT,
	EliminateOther VARCHAR(200),
	Result CHAR(1),
	Remark TEXT,
	Checker VARCHAR(30),
	PRIMARY KEY (LandCheckMixedId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE LandCheckManure (
	LandCheckManureId BIGINT NOT NULL AUTO_INCREMENT,
	LandCheckId BIGINT,
	SEQ INT,
	CheckDate DATE,
	ManureTypeId BIGINT,
	ManureOther VARCHAR(200),
	Formula VARCHAR(100),
	BuyDate DATE,
	ManureStatus CHAR(1),
	ManureName VARCHAR(100),
	Checker VARCHAR(30),
	SourceBuy VARCHAR(100),
	UseRate NUMERIC(12 , 2),
	TotalUse NUMERIC(12 , 2),
	Result CHAR(1),
	Remark TEXT,
	PRIMARY KEY (LandCheckManureId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE LandCheckPrepareSoil (
	LandCheckSoilId BIGINT NOT NULL AUTO_INCREMENT,
	LandCheckId BIGINT,
	SEQ INT,
	CheckDate DATE,
	SoilType VARCHAR(200),
	SourceWater VARCHAR(200),
	Operate VARCHAR(200),
	OperateOther VARCHAR(200),
	Result CHAR(1),
	Remark TEXT,
	Checker VARCHAR(30),
	PRIMARY KEY (LandCheckSoilId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE LandCheckPlant (
	LandCheckPlantId BIGINT NOT NULL AUTO_INCREMENT,
	LandCheckId BIGINT,
	SEQ INT,
	CheckDate DATE,
	PlantMethod VARCHAR(200),
	BreedTypeLevel VARCHAR(200),
	BreedTypeId BIGINT,
	SourceSeed VARCHAR(200),
	SowDate DATE,
	ThrowDate DATE,
	UseRate  NUMERIC(12 , 2),
	Result CHAR(1),
	Remark TEXT,
	Checker VARCHAR(30),
	PRIMARY KEY (LandCheckPlantId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE EliminateMixedBreed (
	EliminateMixedBreedId INT NOT NULL,
	Description VARCHAR(200),
	PRIMARY KEY (EliminateMixedBreedId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE UserRegion (
	UserName VARCHAR(20) NOT NULL,
	RegionNo BIGINT NOT NULL,
	PRIMARY KEY (UserName,RegionNo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE UserProvince (
	UserName VARCHAR(20) NOT NULL,
	RegionNo BIGINT NOT NULL,
	ProvinceNo BIGINT NOT NULL,
	PRIMARY KEY (UserName,RegionNo,ProvinceNo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE UserFarmerGroup (
	UserName VARCHAR(20) NOT NULL,
	FarmerGroupId BIGINT NOT NULL,
	PRIMARY KEY (UserName,FarmerGroupId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE UserProvince ADD CONSTRAINT UserProvince_User_FK FOREIGN KEY (UserName)
	REFERENCES User (UserName)
	ON DELETE CASCADE;

ALTER TABLE UserFarmerGroup ADD CONSTRAINT UserFarmerGroup_User_FK FOREIGN KEY (UserName)
	REFERENCES User (UserName)
	ON DELETE CASCADE;

ALTER TABLE UserRegion ADD CONSTRAINT UserRegion_User_FK FOREIGN KEY (UserName)
	REFERENCES User (UserName)
	ON DELETE CASCADE;
	

ALTER TABLE LandCheckMixed ADD CONSTRAINT LandCheckMixed_LandCheck_FK FOREIGN KEY (LandCheckId)
	REFERENCES LandCheck (LandCheckId)
	ON DELETE CASCADE;


ALTER TABLE LandCheckHarvest ADD CONSTRAINT LandCheckHarvest_LandCheck_FK FOREIGN KEY (LandCheckId)
	REFERENCES LandCheck (LandCheckId)
	ON DELETE CASCADE;


ALTER TABLE LandCheckDisease ADD CONSTRAINT LandCheckDisease_LandCheck_FK FOREIGN KEY (LandCheckId)
	REFERENCES LandCheck (LandCheckId)
	ON DELETE CASCADE;


ALTER TABLE LandCheckManure ADD CONSTRAINT LandCheckManure_LandCheck_FK FOREIGN KEY (LandCheckId)
	REFERENCES LandCheck (LandCheckId)
	ON DELETE CASCADE;

ALTER TABLE LandCheckPlant ADD CONSTRAINT LandCheckPlant_LandCheck_FK FOREIGN KEY (LandCheckId)
	REFERENCES LandCheck (LandCheckId)
	ON DELETE CASCADE;

ALTER TABLE LandCheckPrepareSoil ADD CONSTRAINT LandCheckPrepareSoil_LandCheck_FK FOREIGN KEY (LandCheckId)
	REFERENCES LandCheck (LandCheckId)
	ON DELETE CASCADE;



ALTER TABLE DiseaseType ADD CONSTRAINT DiseaseType_CheckingDiseaseChild_FK FOREIGN KEY (DiseaseChildId)
	REFERENCES CheckingDiseaseChild (DiseaseChildId)
	ON DELETE CASCADE;

ALTER TABLE CheckingDiseaseChild ADD CONSTRAINT CheckingDiseaseChild_CheckingDisease_FK FOREIGN KEY (CheckingDiseaseId)
	REFERENCES CheckingDisease (CheckingDiseaseId)
	ON DELETE CASCADE;


ALTER TABLE MixedBreedType ADD CONSTRAINT MixedBreedType_CheckPeriod_FK FOREIGN KEY (CheckPeriodId)
	REFERENCES CheckPeriod (CheckPeriodId)
	ON DELETE CASCADE;



ALTER TABLE MixedBreedType ADD CONSTRAINT MixedBreedType_CheckPeriod_FK FOREIGN KEY (CheckPeriodId)
	REFERENCES CheckPeriod (CheckPeriodId)
	ON DELETE CASCADE;


ALTER TABLE MixedBreedTypeChild ADD CONSTRAINT MixedBreedTypeChild_MixedBreedType_FK FOREIGN KEY (MixedBreedTypeId)
	REFERENCES MixedBreedType (MixedBreedTypeId)
	ON DELETE CASCADE;



ALTER TABLE LandCheckImages ADD CONSTRAINT LandCheckImages_LandCheck_FK FOREIGN KEY (LandCheckId)
	REFERENCES LandCheck (LandCheckId)
	ON DELETE CASCADE;


ALTER TABLE LandCheck ADD CONSTRAINT LandCheck_CheckPeriod_FK FOREIGN KEY (CheckPeriodId)
	REFERENCES CheckPeriod (CheckPeriodId)
	ON DELETE CASCADE;
----------------------------------------------------------------------------------------


ALTER TABLE FarmerFamily ADD CONSTRAINT FarmerFamily_Plant_FK FOREIGN KEY (PlantId)
	REFERENCES Plant (PlantId)
	ON DELETE CASCADE;


ALTER TABLE FarmerGroupTeam ADD CONSTRAINT FarmerGroupTeam_FarmerGroup_FK FOREIGN KEY (FarmerGroupId)
	REFERENCES FarmerGroup (FarmerGroupId)
	ON DELETE CASCADE;
	

ALTER TABLE AssetDetail ADD CONSTRAINT AssetDetail_Asset_FK FOREIGN KEY (AssetId)
	REFERENCES Asset (AssetId)
	ON DELETE CASCADE;

ALTER TABLE ProductionForecast ADD CONSTRAINT ProductionForecast_BreedGroup_FK FOREIGN KEY (BreedTypeId, BreedGroupId)
	REFERENCES BreedGroup (BreedTypeId, BreedGroupId)
	ON DELETE CASCADE;

ALTER TABLE BreedGroup ADD CONSTRAINT BreedGroup_BreedType_FK FOREIGN KEY (BreedTypeId)
	REFERENCES BreedType (BreedTypeId)
	ON DELETE CASCADE;

ALTER TABLE BankBranch ADD CONSTRAINT BankBranch_Bank_FK FOREIGN KEY (BankId)
	REFERENCES Bank (BankId)
	ON DELETE CASCADE;

ALTER TABLE PrepareArea ADD CONSTRAINT PrepareArea_PrepareArea_FK FOREIGN KEY (PPrepareAreaId)
	REFERENCES PrepareArea (PrepareAreaId)
	ON DELETE CASCADE;

ALTER TABLE UserAuthorize ADD CONSTRAINT UserAuthorize_User_FK FOREIGN KEY (UserName)
	REFERENCES User (UserName)
	ON DELETE CASCADE;

ALTER TABLE FarmerGroupAddress ADD CONSTRAINT FarmerGroupAddress_FarmerGroup_FK FOREIGN KEY (FarmerGroupId)
	REFERENCES FarmerGroup (FarmerGroupId)
	ON DELETE CASCADE;

ALTER TABLE Buyer ADD CONSTRAINT Buyer_SubDistrict_FK1 FOREIGN KEY (PlaceRegionNo, PlaceProvinceNo, PlaceDistrictNo, PlaceSubDistrictNo)
	REFERENCES SubDistrict (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	ON DELETE RESTRICT;

ALTER TABLE FarmerGroupChild ADD CONSTRAINT FarmerGroupChild_FarmerGroup_FK1 FOREIGN KEY (ChildFarmerGroupId)
	REFERENCES FarmerGroup (FarmerGroupId)
	ON DELETE CASCADE;

ALTER TABLE Farmer ADD CONSTRAINT Farmer_Prefix_FK FOREIGN KEY (AbbrPrefix)
	REFERENCES Prefix (AbbrPrefix)
	ON DELETE RESTRICT;

ALTER TABLE PlantDetail ADD CONSTRAINT PlantDetail_LandRight_FK FOREIGN KEY (PlantId, DocNo, TypeId, SEQ)
	REFERENCES LandRight (PlantId, DocNo, TypeId, SEQ)
	ON DELETE CASCADE;

ALTER TABLE EconomicBreed ADD CONSTRAINT EconomicBreed_BreedType_FK FOREIGN KEY (BreedTypeId)
	REFERENCES BreedType (BreedTypeId)
	ON DELETE CASCADE;


ALTER TABLE SeedSelect ADD CONSTRAINT SeedSelect_BreedGroup_FK FOREIGN KEY (BreedTypeId, BreedGroupId)
	REFERENCES BreedGroup (BreedTypeId, BreedGroupId)
	ON DELETE RESTRICT;

ALTER TABLE SubDistrict ADD CONSTRAINT SubDistrict_District_FK FOREIGN KEY (RegionNo, ProvinceNo, DistrictNo)
	REFERENCES District (RegionNo, ProvinceNo, DistrictNo)
	ON DELETE CASCADE;

ALTER TABLE District ADD CONSTRAINT District_Province_FK FOREIGN KEY (RegionNo, ProvinceNo)
	REFERENCES Province (RegionNo, ProvinceNo)
	ON DELETE CASCADE;

ALTER TABLE CostDetail ADD CONSTRAINT CostDetail_PlantDetail_FK FOREIGN KEY (PlantId, BreedTypeId, BreedGroupId, DocNo, TypeId, SEQ)
	REFERENCES PlantDetail (PlantId, BreedTypeId, BreedGroupId, DocNo, TypeId, SEQ)
	ON DELETE CASCADE;

ALTER TABLE CostDetail ADD CONSTRAINT CostDetail_Cost_FK FOREIGN KEY (CostId)
	REFERENCES Cost (CostId)
	ON DELETE CASCADE;

ALTER TABLE BankBranch ADD CONSTRAINT BankBranch_Branch_FK FOREIGN KEY (BranchCode)
	REFERENCES Branch (BranchCode)
	ON DELETE CASCADE;

ALTER TABLE Login ADD CONSTRAINT Login_User_FK FOREIGN KEY (UserName)
	REFERENCES User (UserName)
	ON DELETE CASCADE;

ALTER TABLE FarmerGroupFarmer ADD CONSTRAINT FarmerGroupFarmer_Farmer_FK FOREIGN KEY (IdCard, EffectiveDate)
	REFERENCES Farmer (IdCard, EffectiveDate)
	ON DELETE CASCADE;

ALTER TABLE LandRight ADD CONSTRAINT LandRight_LandRightType_FK FOREIGN KEY (TypeId)
	REFERENCES LandRightType (TypeId)
	ON DELETE RESTRICT;

ALTER TABLE FarmerGroupChild ADD CONSTRAINT FarmerGroupChild_FarmerGroup_FK FOREIGN KEY (FarmerGroupId)
	REFERENCES FarmerGroup (FarmerGroupId)
	ON DELETE CASCADE;


ALTER TABLE HarvestDetail ADD CONSTRAINT HarvestDetail_PlantDetail_FK FOREIGN KEY (PlantId, BreedTypeId, BreedGroupId, DocNo, TypeId, SEQ)
	REFERENCES PlantDetail (PlantId, BreedTypeId, BreedGroupId, DocNo, TypeId, SEQ)
	ON DELETE CASCADE;


ALTER TABLE Menu ADD CONSTRAINT Menu_Menu_FK FOREIGN KEY (PMenuId)
	REFERENCES Menu (MenuId)
	ON DELETE RESTRICT;

ALTER TABLE LandRight ADD CONSTRAINT LandRight_Plant_FK FOREIGN KEY (PlantId)
	REFERENCES Plant (PlantId)
	ON DELETE CASCADE;

ALTER TABLE AssetDetail ADD CONSTRAINT AssetDetail_Plant_FK FOREIGN KEY (PlantId)
	REFERENCES Plant (PlantId)
	ON DELETE CASCADE;

ALTER TABLE ProductionForecast ADD CONSTRAINT ProductionForecast_Province_FK FOREIGN KEY (RegionNo, ProvinceNo)
	REFERENCES Province (RegionNo, ProvinceNo)
	ON DELETE CASCADE;



ALTER TABLE Buyer ADD CONSTRAINT Buyer_SubDistrict_FK FOREIGN KEY (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	REFERENCES SubDistrict (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	ON DELETE RESTRICT;

ALTER TABLE PlantDetail ADD CONSTRAINT PlantDetail_BreedGroup_FK FOREIGN KEY (BreedTypeId, BreedGroupId)
	REFERENCES BreedGroup (BreedTypeId, BreedGroupId)
	ON DELETE CASCADE;

ALTER TABLE Branch ADD CONSTRAINT Branch_SubDistrict_FK FOREIGN KEY (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	REFERENCES SubDistrict (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	ON DELETE RESTRICT;

ALTER TABLE Plant ADD CONSTRAINT Plant_BankBranch_FK FOREIGN KEY (BranchCode, BankId)
	REFERENCES BankBranch (BranchCode, BankId)
	ON DELETE RESTRICT;

ALTER TABLE Province ADD CONSTRAINT Province_Region_FK FOREIGN KEY (RegionNo)
	REFERENCES Region (RegionNo)
	ON DELETE CASCADE;

ALTER TABLE FarmerGroupFarmer ADD CONSTRAINT FarmerGroupFarmer_FarmerGroup_FK FOREIGN KEY (FarmerGroupId)
	REFERENCES FarmerGroup (FarmerGroupId)
	ON DELETE CASCADE;

ALTER TABLE UserAuthorize ADD CONSTRAINT UserAuthorize_Menu_FK FOREIGN KEY (MenuId)
	REFERENCES Menu (MenuId)
	ON DELETE CASCADE;


ALTER TABLE FarmerGroupAddress ADD CONSTRAINT FarmerGroupAddress_SubDistrict_FK FOREIGN KEY (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	REFERENCES SubDistrict (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	ON DELETE CASCADE;

ALTER TABLE EconomicBreed ADD CONSTRAINT EconomicBreed_Province_FK FOREIGN KEY (RegionNo, ProvinceNo)
	REFERENCES Province (RegionNo, ProvinceNo)
	ON DELETE CASCADE;

ALTER TABLE Plant ADD CONSTRAINT Plant_Farmer_FK FOREIGN KEY (IdCard, EffectiveDate)
	REFERENCES Farmer (IdCard, EffectiveDate)
	ON DELETE RESTRICT;

ALTER TABLE Branch ADD CONSTRAINT Branch_Branch_FK FOREIGN KEY (PBranchCode)
	REFERENCES Branch (BranchCode)
	ON DELETE RESTRICT;




ALTER TABLE PlantManure ADD CONSTRAINT PlantManure_ManureType_FK FOREIGN KEY (ManureTypeId)
	REFERENCES ManureType (TypeId)
	ON DELETE RESTRICT;

ALTER TABLE PlantManure ADD CONSTRAINT PlantManure_PlantDetail_FK FOREIGN KEY (PlantId, BreedTypeId, BreedGroupId, DocNo, TypeId, SEQ)
	REFERENCES PlantDetail (PlantId, BreedTypeId, BreedGroupId, DocNo, TypeId, SEQ)
	ON DELETE CASCADE;
	
	
ALTER TABLE PlantChemical ADD CONSTRAINT PlantChemical_PlantDetail_FK FOREIGN KEY (PlantId, BreedTypeId, BreedGroupId, DocNo, TypeId, SEQ)
	REFERENCES PlantDetail (PlantId, BreedTypeId, BreedGroupId, DocNo, TypeId, SEQ)
	ON DELETE CASCADE;

ALTER TABLE PlantChemical ADD CONSTRAINT PlantChemical_ChemicalType_FK FOREIGN KEY (ChemicalTypeId)
	REFERENCES ChemicalType (TypeId)
	ON DELETE RESTRICT;
	
	
ALTER TABLE SellingDetail ADD CONSTRAINT SellingDetail_SubDistrict_FK FOREIGN KEY (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	REFERENCES SubDistrict (RegionNo, ProvinceNo, DistrictNo, SubDistrictNo)
	ON DELETE RESTRICT;

ALTER TABLE SellingDetail ADD CONSTRAINT SellingDetail_PlantDetail_FK FOREIGN KEY (PlantId, BreedTypeId, BreedGroupId, DocNo, TypeId, SEQ)
	REFERENCES PlantDetail (PlantId, BreedTypeId, BreedGroupId, DocNo, TypeId, SEQ)
	ON DELETE CASCADE;
	
ALTER TABLE SellingDetail ADD CONSTRAINT SellingDetail_Buyer_FK FOREIGN KEY (BuyerId)
	REFERENCES Buyer (BuyerId)
	ON DELETE RESTRICT;
