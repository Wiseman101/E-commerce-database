CREATE DATABASE branddb;
USE branddb;
-- Brand Table
CREATE TABLE brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(100) NOT NULL
);

-- Product Category Table
CREATE TABLE product_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

-- Product Table
CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    brand_id INT,
    category_id INT,
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

-- Color Table
CREATE TABLE color (
    color_id INT AUTO_INCREMENT PRIMARY KEY,
    color_name VARCHAR(50) NOT NULL,
    hex_code VARCHAR(7) NOT NULL
);

-- Size Category Table
CREATE TABLE size_category (
    size_category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

-- Size Option Table
CREATE TABLE size_option (
    size_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_id INT,
    size_label VARCHAR(50) NOT NULL,
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

-- Product Item Table
CREATE TABLE product_item (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    color_id INT,
    size_id INT,
    quantity INT DEFAULT 0,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id),
    FOREIGN KEY (size_id) REFERENCES size_option(size_id)
);

-- Product Image Table
CREATE TABLE product_image (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    image_url TEXT NOT NULL,
    is_primary BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Attribute Category Table
CREATE TABLE attribute_category (
    attr_cat_id INT AUTO_INCREMENT PRIMARY KEY,
    attr_cat_name VARCHAR(100) NOT NULL
);

-- Attribute Type Table
CREATE TABLE attribute_type (
    attribute_id INT AUTO_INCREMENT PRIMARY KEY,
    attr_cat_id INT,
    attribute_name VARCHAR(100) NOT NULL,
    FOREIGN KEY (attr_cat_id) REFERENCES attribute_category(attr_cat_id)
);

-- Product Attribute Table
CREATE TABLE product_attribute (
    prod_attr_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    attribute_id INT,
    attribute_value VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (attribute_id) REFERENCES attribute_type(attribute_id)
);

-- Product Variation Table
CREATE TABLE product_variation (
    variation_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    variation_name VARCHAR(100),
    variation_value VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);
