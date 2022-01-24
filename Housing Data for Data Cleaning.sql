--Standardized date format

UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,' 1,',' 01,');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,' 2,',' 02,');

UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,' 3,',' 03,');

UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,' 4,',' 04,');

UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,' 5,',' 05,');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,' 6,',' 06,');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,' 7,',' 07,');

UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,' 8,',' 08,');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,' 9,',' 09,');

UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,' ','-');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,',','');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,'January','01');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,'February','02');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,'March','03');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,'April','04');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,'May','05');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,'June','06');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,'July','07');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,'August','08');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,'September','09');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,'October','10');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,'November','11');
	
UPDATE	
    Housing
SET
    SaleDate = REPLACE(SaleDate,'December','12');
	
SELECT date(substr(SaleDate, 7, 4) || '-' || substr(SaleDate, 1, 2) || '-' || substr(SaleDate, 4, 2)) standardizeddate from Housing;

-- Populate Property Address data
SELECT *
FROM Housing
ORDER BY ParcelID;

SELECT a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress, IFNULL(a.PropertyAddress, b.PropertyAddress)
FROM Housing a
JOIN Housing b
	ON a.ParcelID = b.ParcelID
	AND a.UniqueID <> b.UniqueID
WHERE a.PropertyAddress IS NULL;

UPDATE Housing
SET PropertyAddress = IFNULL(a.PropertyAddress, b.PropertyAddress)
FROM Housing a
JOIN Housing b
	ON a.ParcelID = b.ParcelID
	AND a.UniqueID <> b.UniqueID
WHERE a.PropertyAddress IS NULL;

--Break out address into individual column
SELECT DISTINCT PropertyAddress FROM Housing;

SELECT substr(PropertyAddress, -10, 10) propertysplitcity FROM Housing;

SELECT substr(PropertyAddress, 1, 20) FROM Housing;

--Change Y and N to Yes and No in "Sold As Vacant" COLUMN
Select SoldAsVacant
, CASE When SoldAsVacant = 'Y' THEN 'Yes'
	   When SoldAsVacant = 'N' THEN 'No'
	   ELSE SoldAsVacant
	   END
From Housing;

Update Housing
SET SoldAsVacant = CASE When SoldAsVacant = 'Y' THEN 'Yes'
	   When SoldAsVacant = 'N' THEN 'No'
	   ELSE SoldAsVacant
	   END
	   
SELECT DISTINCT SoldAsVacant FROM Housing;
