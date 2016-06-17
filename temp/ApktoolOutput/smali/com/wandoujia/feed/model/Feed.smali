.class public Lcom/wandoujia/feed/model/Feed;
.super Ljava/lang/Object;
.source "Feed.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FLAG_ALL_READ:I = 0x1

.field public static final FLAG_ALL_READ_FOR_NEW_USER:I = 0x8

.field public static final FLAG_NOT_NOTIFY_UNREAD:I = 0x2

.field public static final FLAG_UNREAD_FOR_NEW_ENTRIES:I = 0x4


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

.field private configure:I

.field private entry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/feed/model/Entry;",
            ">;"
        }
    .end annotation
.end field

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

.field private logo:Ljava/lang/String;

.field private subscribed:Ljava/lang/Boolean;

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updated:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEntry()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/wandoujia/feed/model/Feed;->entry:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/wandoujia/feed/model/Feed;->entry:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    :cond_0
    return-void
.end method

.method public getAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/wandoujia/feed/model/Feed;->attrs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/feed/model/Feed;->attrs:Ljava/util/Map;

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
    .line 155
    iget-object v0, p0, Lcom/wandoujia/feed/model/Feed;->attrs:Ljava/util/Map;

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
    .line 102
    iget-object v0, p0, Lcom/wandoujia/feed/model/Feed;->author:Ljava/util/List;

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
    .line 132
    iget-object v0, p0, Lcom/wandoujia/feed/model/Feed;->category:Ljava/util/List;

    return-object v0
.end method

.method public getConfigure()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/wandoujia/feed/model/Feed;->configure:I

    return v0
.end method

.method public getEntry()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/feed/model/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/wandoujia/feed/model/Feed;->entry:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wandoujia/feed/model/Feed;->id:Ljava/lang/String;

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
    .line 110
    iget-object v0, p0, Lcom/wandoujia/feed/model/Feed;->link:Ljava/util/List;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/wandoujia/feed/model/Feed;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/wandoujia/feed/model/Feed;->subscribed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/wandoujia/feed/model/Feed;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/feed/model/Feed;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/wandoujia/feed/model/Feed;->updated:J

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
    .line 157
    iput-object p1, p0, Lcom/wandoujia/feed/model/Feed;->attrs:Ljava/util/Map;

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
    .line 106
    iput-object p1, p0, Lcom/wandoujia/feed/model/Feed;->author:Ljava/util/List;

    .line 107
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
    .line 136
    iput-object p1, p0, Lcom/wandoujia/feed/model/Feed;->category:Ljava/util/List;

    .line 137
    return-void
.end method

.method public setConfigure(I)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput p1, p0, Lcom/wandoujia/feed/model/Feed;->configure:I

    .line 145
    return-void
.end method

.method public setEntry(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/feed/model/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    iput-object p1, p0, Lcom/wandoujia/feed/model/Feed;->entry:Ljava/util/List;

    .line 123
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wandoujia/feed/model/Feed;->id:Ljava/lang/String;

    .line 67
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
    .line 114
    iput-object p1, p0, Lcom/wandoujia/feed/model/Feed;->link:Ljava/util/List;

    .line 115
    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/wandoujia/feed/model/Feed;->logo:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setSubscribed(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/wandoujia/feed/model/Feed;->subscribed:Ljava/lang/Boolean;

    .line 153
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wandoujia/feed/model/Feed;->subtitle:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/wandoujia/feed/model/Feed;->title:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setUpdated(J)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/wandoujia/feed/model/Feed;->updated:J

    .line 99
    return-void
.end method
