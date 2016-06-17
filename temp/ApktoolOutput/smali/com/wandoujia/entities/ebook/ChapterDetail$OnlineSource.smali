.class public Lcom/wandoujia/entities/ebook/ChapterDetail$OnlineSource;
.super Ljava/lang/Object;
.source "ChapterDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private chapterUrl:Ljava/lang/String;

.field private providerName:Ljava/lang/String;

.field private words:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/ChapterDetail$OnlineSource;->providerName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/ChapterDetail$OnlineSource;->chapterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWords()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/wandoujia/entities/ebook/ChapterDetail$OnlineSource;->words:J

    return-wide v0
.end method
