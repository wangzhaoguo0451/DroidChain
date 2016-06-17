.class public final Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "IASSearchResultPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public item_num:Ljava/lang/Integer;

.field public section_type:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 249
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 253
    if-nez p1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->section_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;->section_type:Ljava/lang/String;

    .line 255
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;->title:Ljava/lang/String;

    .line 256
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->item_num:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;->item_num:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;
    .locals 2

    .prologue
    .line 285
    new-instance v0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;-><init>(Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final item_num(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;->item_num:Ljava/lang/Integer;

    .line 280
    return-object p0
.end method

.method public final section_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;->section_type:Ljava/lang/String;

    .line 264
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;->title:Ljava/lang/String;

    .line 272
    return-object p0
.end method
