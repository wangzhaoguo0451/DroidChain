.class public final Lfhq;
.super Leuf;
.source "CommunityRankingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leuf",
        "<",
        "Lfgb;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic b:Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lfhq;->b:Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;

    invoke-direct {p0}, Leuf;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lfhq;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Lcom/wandoujia/mvc/BaseController;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lffk;

    iget-object v1, p0, Lfhq;->b:Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lffk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/ViewGroup;)Lcom/wandoujia/mvc/BaseView;
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-static {p1}, Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;->b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;

    move-result-object v0

    return-object v0
.end method
