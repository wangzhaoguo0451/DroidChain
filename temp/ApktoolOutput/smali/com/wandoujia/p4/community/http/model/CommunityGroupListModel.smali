.class public Lcom/wandoujia/p4/community/http/model/CommunityGroupListModel;
.super Ljava/lang/Object;
.source "CommunityGroupListModel.java"

# interfaces
.implements Lflg;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lflg",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x56d8a0fe78e81da3L


# instance fields
.field public hasMore:Ljava/lang/String;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;",
            ">;"
        }
    .end annotation
.end field

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupListModel;->items:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupListModel;->totalCount:I

    return v0
.end method
