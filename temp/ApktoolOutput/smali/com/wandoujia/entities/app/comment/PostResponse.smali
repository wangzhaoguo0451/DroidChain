.class public Lcom/wandoujia/entities/app/comment/PostResponse;
.super Ljava/lang/Object;
.source "PostResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FAILED:I = -0x1

.field public static final SUCCESS:I = 0x0

.field public static final WRONG_VERIFY_CODE:I = -0x2


# instance fields
.field private comment:Lcom/wandoujia/entities/app/comment/Comment;

.field private errorCode:I

.field private errorMsg:Ljava/lang/String;

.field private reply:Lcom/wandoujia/entities/app/comment/Reply;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Lcom/wandoujia/entities/app/comment/Comment;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/entities/app/comment/PostResponse;->comment:Lcom/wandoujia/entities/app/comment/Comment;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/wandoujia/entities/app/comment/PostResponse;->errorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/entities/app/comment/PostResponse;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getReply()Lcom/wandoujia/entities/app/comment/Reply;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/entities/app/comment/PostResponse;->reply:Lcom/wandoujia/entities/app/comment/Reply;

    return-object v0
.end method
