# Database elderly



[TOC]

## Table structure for table content

| **Column**      | **Type**     | **Default** |
| --------------- | ------------ | ----------- |
| **idContent**   | int(11)      |             |
| nameContent     | text         |             |
| detailConten    | text         |             |
| urlMediaContent | varchar(255) |             |
| contentType     | varchar(255) |             |
| idCategory      | int(11)      |             |
| idMember        | int(11)      |             |
| activeStatus    | tinyint(4)   | 0           |
| createTime      | int(11)      |             |
| updateTime      | int(11)      |             |

* **contentType**
  1. image
  2. video
  3. EPUB3
  4. image3D
* **urlMediaContent**
  1. contentType is image it's ulr in tag img of HTML5
  2. contentType is video it's ulr in tag iframe of HTML5
* **activeStatus**
  1. 0 = Not allowed to show.
  2. 1 = Dhowing.
  3. 2 = Waiting for approval. (member request add content)
  4. 3 = Waiting for approval. (member request edit content)
  5. 4 = Waiting for approval. (member request delete content)
  6. 5 = Admin allowed to delete. Waiting for confirmation to delete again.
