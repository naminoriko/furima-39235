## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false, unique: true |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| last_name          | string | null: false               |
| first_name         | string | null: false               |
| last_name_kana     | string | null: false               |
| first_name_kana    | string | null: false               |
| year_birthday      | string | null: false               |
| month_birthday     | string | null: false               |
| day_birthday       | string | null: false               |


### Association

- has_many :items
- has_many :orders

## items テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| name             | string     | null: false                    |
| content          | string     | null: false                    |
| category         | string     | null: false                    |
| condition        | string     | null: false                    |
| delivery_payment | string     | null: false                    |
| sender_area      | string     | null: false                    |
| number_of_day    | integer    | null: false                    |
| price            | integer    | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association

- has_one :order
- belongs_to :user

## order テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| card             | string     | null: false                    |
| post_code        | string     | null: false                    |
| prefercture      | string     | null: false                    |
| city             | string     | null: false                    |
| banch            | string     | null: false                    |
| building         | string     | null: false                    |
| phone_number     | integer    | null: false                    |
| user             | reference  | null: false, foreign_key: true |
| item             | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :order