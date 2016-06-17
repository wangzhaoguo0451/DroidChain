.class public final Lfgd;
.super Ljava/lang/Object;
.source "CommunityReplyCardModel.java"

# interfaces
.implements Lfby;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfby",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lfgd;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/p4/card/models/CardViewModel;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lfge;

    iget-object v1, p0, Lfgd;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-direct {v0, v1}, Lfge;-><init>(Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;)V

    return-object v0
.end method
