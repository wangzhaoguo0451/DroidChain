.class public Lcom/wandoujia/entities/game/ParagraphContent;
.super Ljava/lang/Object;
.source "ParagraphContent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private author:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/game/ImageModel;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private textStyle:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/entities/game/ParagraphContent;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/entities/game/ParagraphContent;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/game/ImageModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wandoujia/entities/game/ParagraphContent;->images:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wandoujia/entities/game/ParagraphContent;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextStyle()Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/entities/game/ParagraphContent;->textStyle:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    return-object v0
.end method
