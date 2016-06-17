.class public Lcom/wandoujia/launcher/launcher/models/ParagraphContent;
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
            "Lcom/wandoujia/launcher/launcher/models/ImageModel;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private textStyle:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/ImageModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent;->images:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextStyle()Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent;->textStyle:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    return-object v0
.end method
