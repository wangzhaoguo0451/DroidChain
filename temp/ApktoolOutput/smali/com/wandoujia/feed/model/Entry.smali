.class public Lcom/wandoujia/feed/model/Entry;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private author:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/feed/model/Author;",
            ">;"
        }
    .end annotation
.end field

.field private category:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/feed/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private entryId:Ljava/lang/String;

.field private feedUri:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private link:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/feed/model/Link;",
            ">;"
        }
    .end annotation
.end field

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private unread:Ljava/lang/Boolean;

.field private updated:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/wandoujia/feed/model/Entry;->attrs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/feed/model/Entry;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getAttrs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/wandoujia/feed/model/Entry;->attrs:Ljava/util/Map;

    return-object v0
.end method

.method public getAuthor()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/feed/model/Author;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/wandoujia/feed/model/Entry;->author:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/feed/model/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/wandoujia/feed/model/Entry;->category:Ljava/util/List;

    return-object v0
.end method

.method public getEntryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wandoujia/feed/model/Entry;->entryId:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wandoujia/feed/model/Entry;->feedUri:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wandoujia/feed/model/Entry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/feed/model/Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/wandoujia/feed/model/Entry;->link:Ljava/util/List;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/feed/model/Entry;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/feed/model/Entry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUnread()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/wandoujia/feed/model/Entry;->unread:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUpdated()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/wandoujia/feed/model/Entry;->updated:J

    return-wide v0
.end method

.method public setAttrs(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lcom/wandoujia/feed/model/Entry;->attrs:Ljava/util/Map;

    return-void
.end method

.method public setAuthor(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/feed/model/Author;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcom/wandoujia/feed/model/Entry;->author:Ljava/util/List;

    .line 82
    return-void
.end method

.method public setCategory(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/feed/model/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/feed/model/Entry;->category:Ljava/util/List;

    .line 98
    return-void
.end method

.method public setEntryId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/wandoujia/feed/model/Entry;->entryId:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setFeedUri(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/wandoujia/feed/model/Entry;->feedUri:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/wandoujia/feed/model/Entry;->id:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setLink(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/feed/model/Link;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/wandoujia/feed/model/Entry;->link:Ljava/util/List;

    .line 90
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/wandoujia/feed/model/Entry;->summary:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/wandoujia/feed/model/Entry;->title:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setUnread(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/wandoujia/feed/model/Entry;->unread:Ljava/lang/Boolean;

    .line 114
    return-void
.end method

.method public setUpdated(J)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/wandoujia/feed/model/Entry;->updated:J

    .line 74
    return-void
.end method
