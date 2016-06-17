.class public Lfhr;
.super Ljava/lang/Object;
.source "CommunityRankingListFragment.java"

# interfaces
.implements Lfza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfza",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;",
        "Lfgb;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lfhr;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 89
    check-cast p1, Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;

    new-instance v0, Lfgb;

    invoke-direct {v0, p1}, Lfgb;-><init>(Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lfhr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
