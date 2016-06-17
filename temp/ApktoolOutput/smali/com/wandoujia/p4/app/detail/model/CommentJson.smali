.class public Lcom/wandoujia/p4/app/detail/model/CommentJson;
.super Ljava/lang/Object;
.source "CommentJson.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4f27ef7ac510da67L


# instance fields
.field private agree:Ljava/lang/Boolean;

.field private agreeCount:I

.field private authorId:Ljava/lang/String;

.field private authorName:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private enjoy:Ljava/lang/Boolean;

.field private hot:Z

.field private id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->id:Ljava/lang/Long;

    .line 27
    iput-object p2, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->authorId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->authorName:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->avatar:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->enjoy:Ljava/lang/Boolean;

    .line 31
    iput-object p6, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->date:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->content:Ljava/lang/String;

    .line 33
    iput-object p8, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->agree:Ljava/lang/Boolean;

    .line 34
    iput p9, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->agreeCount:I

    .line 35
    iput-boolean p10, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->hot:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getAgree()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->agree:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAgreeCount()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->agreeCount:I

    return v0
.end method

.method public getAuthorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->authorId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getEnjoy()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->enjoy:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public isHot()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->hot:Z

    return v0
.end method

.method public setAgree(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->agree:Ljava/lang/Boolean;

    .line 100
    return-void
.end method

.method public setAgreeCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput p1, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->agreeCount:I

    .line 108
    return-void
.end method

.method public setAuthorId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->authorId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setAuthorName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->authorName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->avatar:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->content:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->date:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setEnjoy(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->enjoy:Ljava/lang/Boolean;

    .line 76
    return-void
.end method

.method public setHot(Z)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->hot:Z

    .line 116
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wandoujia/p4/app/detail/model/CommentJson;->id:Ljava/lang/Long;

    .line 44
    return-void
.end method
