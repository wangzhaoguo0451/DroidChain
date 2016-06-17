.class public Lcom/wandoujia/entities/app/comment/Comment;
.super Ljava/lang/Object;
.source "Comment.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private approvalsCount:I

.field private author:Lcom/wandoujia/entities/app/comment/Author;

.field private authorFavorite:Lcom/wandoujia/entities/app/comment/Comment$Favorite;

.field private content:Ljava/lang/String;

.field private id:J

.field private repliesCount:I

.field private updatedDate:J

.field private updatedDateStr:Ljava/lang/String;

.field private userInfo:Lcom/wandoujia/entities/app/comment/UserInfo;

.field private versionCode:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getApprovalsCount()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/wandoujia/entities/app/comment/Comment;->approvalsCount:I

    return v0
.end method

.method public getAuthor()Lcom/wandoujia/entities/app/comment/Author;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/entities/app/comment/Comment;->author:Lcom/wandoujia/entities/app/comment/Author;

    return-object v0
.end method

.method public getAuthorFavorite()Lcom/wandoujia/entities/app/comment/Comment$Favorite;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/entities/app/comment/Comment;->authorFavorite:Lcom/wandoujia/entities/app/comment/Comment$Favorite;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/entities/app/comment/Comment;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/wandoujia/entities/app/comment/Comment;->id:J

    return-wide v0
.end method

.method public getRepliesCount()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/wandoujia/entities/app/comment/Comment;->repliesCount:I

    return v0
.end method

.method public getUpdatedDate()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/wandoujia/entities/app/comment/Comment;->updatedDate:J

    return-wide v0
.end method

.method public getUpdatedDateStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wandoujia/entities/app/comment/Comment;->updatedDateStr:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/wandoujia/entities/app/comment/UserInfo;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/entities/app/comment/Comment;->userInfo:Lcom/wandoujia/entities/app/comment/UserInfo;

    return-object v0
.end method

.method public getVersionCode()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/wandoujia/entities/app/comment/Comment;->versionCode:J

    return-wide v0
.end method
