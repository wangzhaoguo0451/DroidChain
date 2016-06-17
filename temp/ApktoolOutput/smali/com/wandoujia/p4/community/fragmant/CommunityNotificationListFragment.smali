.class public Lcom/wandoujia/p4/community/fragmant/CommunityNotificationListFragment;
.super Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;
.source "CommunityNotificationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment",
        "<",
        "Lfga;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method protected final a()Lfsi;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfsi",
            "<",
            "Lfga;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lfsw;

    new-instance v1, Lfkv;

    invoke-direct {v1}, Lfkv;-><init>()V

    new-instance v2, Lfhh;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lfhh;-><init>(B)V

    invoke-direct {v0, v1, v2}, Lfsw;-><init>(Lfsi;Lfza;)V

    return-object v0
.end method

.method protected final b()Leun;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leun",
            "<",
            "Lfga;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lfhg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfhg;-><init>(B)V

    return-object v0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_MESSAGE:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    .line 49
    return-void
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    return-void
.end method
