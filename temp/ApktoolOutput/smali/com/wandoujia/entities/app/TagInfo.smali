.class public Lcom/wandoujia/entities/app/TagInfo;
.super Ljava/lang/Object;
.source "TagInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alias:Ljava/lang/String;

.field private banner:Ljava/lang/String;

.field private contentUrl:Ljava/lang/String;

.field private defaultAppCount:I

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private intent:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private subCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/Object;

.field private thumbnail:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/entities/app/TagInfo;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getBanner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/entities/app/TagInfo;->banner:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wandoujia/entities/app/TagInfo;->contentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultAppCount()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/wandoujia/entities/app/TagInfo;->defaultAppCount:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/entities/app/TagInfo;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wandoujia/entities/app/TagInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wandoujia/entities/app/TagInfo;->intent:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wandoujia/entities/app/TagInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSubCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/TagInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/wandoujia/entities/app/TagInfo;->subCategories:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/wandoujia/entities/app/TagInfo;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/entities/app/TagInfo;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/entities/app/TagInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hasSubCategories()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/entities/app/TagInfo;->subCategories:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/TagInfo;->subCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/wandoujia/entities/app/TagInfo;->alias:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setBanner(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/wandoujia/entities/app/TagInfo;->banner:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setContentUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/wandoujia/entities/app/TagInfo;->contentUrl:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setDefaultAppCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput p1, p0, Lcom/wandoujia/entities/app/TagInfo;->defaultAppCount:I

    .line 114
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/wandoujia/entities/app/TagInfo;->icon:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/wandoujia/entities/app/TagInfo;->intent:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/wandoujia/entities/app/TagInfo;->name:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSubCategories(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/TagInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/wandoujia/entities/app/TagInfo;->subCategories:Ljava/util/List;

    .line 90
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/entities/app/TagInfo;->tag:Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/wandoujia/entities/app/TagInfo;->thumbnail:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/wandoujia/entities/app/TagInfo;->type:Ljava/lang/String;

    .line 74
    return-void
.end method
