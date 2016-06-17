.class public final Ldrj;
.super Lcom/wandoujia/p4/campaign/CampaignFragment;
.source "InAppCampaignActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 42
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    invoke-virtual {p0}, Ldrj;->getView()Landroid/view/View;

    move-result-object v1

    const-string v2, "wdj://search/ias"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ldrj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method
