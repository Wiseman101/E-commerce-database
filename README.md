# 🛍️ E-Commerce Platform Database

Welcome to the official repository for our E-Commerce Database Schema Project! Built with love by 💻 Hillary , Aicey, Silvia and Sophia. This system is designed to power a robust and scalable e-commerce platform — ideal for showcasing products, handling variants, and ensuring a seamless shopping experience.

---

## 📚 Project Overview

This project focuses on building a **relational MySQL database** schema tailored for a modern e-commerce platform. It includes everything from brands, product categories, color options, and sizing to dynamic product attributes and variations.

---

## ⚙️ Technologies Used

- **Database**: MySQL 8.0+
- **ERD Design**: [dbdiagram.io](), MySQL Workbench
- **Version Control**: Git + GitHub
- **Dev Tools**: VS Code, Terminal/CMD

---

## 🧱 Entity (Table) Breakdown

| Table Name         | Description |
|--------------------|-------------|
| `brand`            | Stores brand details |
| `product_category` | Product classification |
| `product`          | Main product info including price and relationships |
| `color`            | Available color options |
| `size_category`    | Groups for sizing systems |
| `size_option`      | Specific sizes (e.g., S, M, 42) |
| `product_item`     | Individual items for purchase (product + color + size) |
| `product_image`    | Images for each product |
| `attribute_category` | Categories of attributes |
| `attribute_type`   | Attribute types (e.g., Material, Weight) |
| `product_attribute`| Values for each product's attributes |
| `product_variation`| Custom product variation definitions |

---

## 🔗 Relationships

- Each **product** is linked to a **brand** and a **category**
- **Product items** are tied to specific **colors** and **sizes**
- **Images**, **attributes**, and **variations** are product-specific
- Foreign keys are used throughout to ensure referential integrity

---

## 🔄 Data Flow

1. **Admins** create brands, categories, colors, sizes, and attributes
2. Products are added and linked to these references
3. Specific product items are created by combining product + size + color
4. Customers browse the catalog via frontend, which queries this schema




--List All Entities & Attributes
Attributes (PK , FK )
brand	id , name, description, logo_url, created_at, updated_at
product_category	id , name, parent_id  (self-referential), is_active, created_at
product	id , name, description, brand_id , category_id , base_price
product_image	id , product_id , image_url, is_primary, alt_text, display_order
color	id , name, hex_code
size_category	id , name, description
size_option	id , size_category_id , name, description
product_variation	id , product_id , color_id , size_id 
product_item	id , product_id , sku, price_modifier, quantity, is_active
attribute_category	id , name, description
attribute_type	id , name, data_type (ENUM: text/number/boolean/date)
product_attribute	id , product_id , attribute_type_id , value, category_id 




------Key Relationships
Product to Brand: Many-to-one (Many products can belong to one brand)

Product to Category: Many-to-one (Many products can belong to one category)

Product to Product Items: One-to-many (One product can have many items/variations)

Product to Images: One-to-many (One product can have multiple images)

Product to Attributes: One-to-many (One product can have multiple attributes)

Product to Variations: One-to-many (One product can have multiple variations)

Size Category to Size Options: One-to-many (One category contains multiple size options)

Attribute Category to Attributes: One-to-many (One category contains multiple attributes)
