.class public Lcom/wandoujia/entities/ebook/ChapterContent;
.super Ljava/lang/Object;
.source "ChapterContent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private chapterUrl:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChapterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/ChapterContent;->chapterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/ChapterContent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/wandoujia/entities/ebook/ChapterContent;->id:J

    return-wide v0
.end method
