.class public Lcom/wandoujia/entities/ebook/EbookBaseInfo$CoverUrls;
.super Ljava/lang/Object;
.source "EbookBaseInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private l:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLargeCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo$CoverUrls;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo$CoverUrls;->s:Ljava/lang/String;

    return-object v0
.end method

.method public setLargeCoverUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo$CoverUrls;->l:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setSmallCoverUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo$CoverUrls;->s:Ljava/lang/String;

    .line 237
    return-void
.end method
