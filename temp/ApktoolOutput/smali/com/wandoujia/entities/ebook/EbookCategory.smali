.class public Lcom/wandoujia/entities/ebook/EbookCategory;
.super Ljava/lang/Object;
.source "EbookCategory.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alias:Ljava/lang/String;

.field private books:J

.field private hotBooksTitle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:J

.field private name:Ljava/lang/String;

.field private subCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCategory;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getHotBooksTitle()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCategory;->hotBooksTitle:Ljava/util/List;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/wandoujia/entities/ebook/EbookCategory;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCategory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumOfBooks()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/wandoujia/entities/ebook/EbookCategory;->books:J

    return-wide v0
.end method

.method public getSubCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCategory;->subCategories:Ljava/util/List;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wandoujia/entities/ebook/EbookCategory;->alias:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setBooks(J)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/wandoujia/entities/ebook/EbookCategory;->books:J

    .line 48
    return-void
.end method

.method public setId(J)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/wandoujia/entities/ebook/EbookCategory;->id:J

    .line 36
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/wandoujia/entities/ebook/EbookCategory;->name:Ljava/lang/String;

    .line 40
    return-void
.end method
