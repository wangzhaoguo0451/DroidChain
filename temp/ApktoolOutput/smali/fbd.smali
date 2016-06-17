.class final Lfbd;
.super Ljava/lang/Object;
.source "CampaignFragment.java"

# interfaces
.implements Lbtk;


# instance fields
.field private synthetic a:Lfbc;


# direct methods
.method constructor <init>(Lfbc;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lfbd;->a:Lfbc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nispok/snackbar/Snackbar;)V
    .locals 2
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lfbd;->a:Lfbc;

    iget-object v0, v0, Lfbc;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wandoujia/p4/campaign/CampaignFragment;->a(Lcom/wandoujia/p4/campaign/CampaignFragment;Z)Z

    .line 324
    iget-object v0, p0, Lfbd;->a:Lfbc;

    iget-object v0, v0, Lfbc;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->a(Lcom/wandoujia/p4/campaign/CampaignFragment;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lfbd;->a:Lfbc;

    iget-object v1, v1, Lfbc;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    iget-object v1, v1, Lcom/wandoujia/p4/campaign/CampaignFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 325
    return-void
.end method
