.class public Lcom/wandoujia/entities/app/comment/Reply;
.super Ljava/lang/Object;
.source "Reply.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private author:Lcom/wandoujia/entities/app/comment/Author;

.field private commentId:J

.field private content:Ljava/lang/String;

.field private id:J

.field private updatedDate:J

.field private updatedDateStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/wandoujia/entities/app/comment/Author;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/entities/app/comment/Reply;->author:Lcom/wandoujia/entities/app/comment/Author;

    return-object v0
.end method

.method public getCommentId()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/wandoujia/entities/app/comment/Reply;->commentId:J

    return-wide v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/entities/app/comment/Reply;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/wandoujia/entities/app/comment/Reply;->id:J

    return-wide v0
.end method

.method public getUpdatedDate()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/wandoujia/entities/app/comment/Reply;->updatedDate:J

    return-wide v0
.end method

.method public getUpdatedDateStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/entities/app/comment/Reply;->updatedDateStr:Ljava/lang/String;

    return-object v0
.end method
