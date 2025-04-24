# 🛍️ E-Commerce Platform Database

Welcome to the official repository for our E-Commerce Database Schema Project! Built with love by 💻 Hillary , Aicey, Silvia and Sophia. This system is designed to power a robust and scalable e-commerce platform — ideal for showcasing products, handling variants, and ensuring a seamless shopping experience.

---

## 📚 Project Overview

This project focuses on building a **relational MySQL database** schema tailored for a modern e-commerce platform. It includes everything from brands, product categories, color options, and sizing to dynamic product attributes and variations.

---

## ⚙️ Technologies Used

- **Database**: MySQL 8.0+
- **ERD Design**: [dbdiagram.io](https://dbdiagram.io), MySQL Workbench
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

---
