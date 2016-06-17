.class public Lcom/wandoujia/entities/ebook/EbookSuperCategory;
.super Ljava/lang/Object;
.source "EbookSuperCategory.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alias:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;

.field private subCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/ebook/EbookCategory;",
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
    .line 24
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookSuperCategory;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/wandoujia/entities/ebook/EbookSuperCategory;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookSuperCategory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSubCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/ebook/EbookCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookSuperCategory;->subCategories:Ljava/util/List;

    return-object v0
.end method
