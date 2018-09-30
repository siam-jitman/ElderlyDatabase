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

* contentType
  * image
  * video
  * EPUB3
  * image3D
* urlMediaContent
  * if contentType is image it's ulr in tag img of HTML5
  * if contentType is video it's ulr in tag iframe of HTML5
* activeStatus
  * 0 = Not allowed to show.
  * 1 = Dhowing.
  * 2 = Waiting for approval. (member request add content)
  * 3 = Waiting for approval. (member request edit content)
  * 4 = Waiting for approval. (member request delete content)
  * 5 = Admin allowed to delete. Waiting for confirmation to delete again.
