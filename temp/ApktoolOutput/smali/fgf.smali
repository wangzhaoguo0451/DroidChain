.class public final Lfgf;
.super Ljava/lang/Object;
.source "CommunityTopicCardModel.java"

# interfaces
.implements Lfby;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfby",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lfgf;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/p4/card/models/CardViewModel;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lfgg;

    iget-object v1, p0, Lfgf;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-direct {v0, v1}, Lfgg;-><init>(Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)V

    return-object v0
.end method
