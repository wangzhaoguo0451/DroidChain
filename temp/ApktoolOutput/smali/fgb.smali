.class public final Lfgb;
.super Ljava/lang/Object;
.source "CommunityRankingCardModel.java"

# interfaces
.implements Lfby;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfby",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lfgb;->a:Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/p4/card/models/CardViewModel;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lfgc;

    invoke-direct {v0, p0}, Lfgc;-><init>(Lfgb;)V

    return-object v0
.end method
