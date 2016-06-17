.class public Lcom/wandoujia/p4/community/http/model/CommunityUserStatModel;
.super Ljava/lang/Object;
.source "CommunityUserStatModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private repliedTopicsCount:I

.field private topicsCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRepliedTopicsCount()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserStatModel;->repliedTopicsCount:I

    return v0
.end method

.method public getTopicsCount()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserStatModel;->topicsCount:I

    return v0
.end method

.method public setRepliedTopicsCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserStatModel;->repliedTopicsCount:I

    .line 27
    return-void
.end method

.method public setTopicsCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserStatModel;->topicsCount:I

    .line 19
    return-void
.end method
