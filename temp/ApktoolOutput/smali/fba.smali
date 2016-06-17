.class public final Lfba;
.super Ljava/lang/Object;
.source "CampaignFragment.java"

# interfaces
.implements Lrw;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/campaign/CampaignFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/campaign/CampaignFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lfba;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lfba;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/campaign/CampaignFragment;->a(Lcom/wandoujia/p4/campaign/CampaignFragment;)Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 184
    :goto_0
    return v0

    .line 147
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 178
    :pswitch_1
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->ALL:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/search/activity/SearchQueryHistoryActivity;->a(Landroid/content/Context;Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    .line 184
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v1, p0, Lfba;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v1, v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->a(Lcom/wandoujia/p4/campaign/CampaignFragment;Z)Z

    .line 150
    iget-object v0, p0, Lfba;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->a(Lcom/wandoujia/p4/campaign/CampaignFragment;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lfba;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    iget-object v1, v1, Lcom/wandoujia/p4/campaign/CampaignFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :pswitch_3
    iget-object v0, p0, Lfba;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->a(Lcom/wandoujia/p4/campaign/CampaignFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lfba;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/campaign/CampaignFragment;->a(Lcom/wandoujia/p4/campaign/CampaignFragment;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 157
    :try_start_0
    iget-object v1, p0, Lfba;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 159
    :catch_0
    move-exception v0

    goto :goto_1

    .line 164
    :pswitch_4
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lfba;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 167
    const-string v1, "text label"

    iget-object v2, p0, Lfba;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/campaign/CampaignFragment;->a(Lcom/wandoujia/p4/campaign/CampaignFragment;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_1

    .line 171
    :cond_2
    iget-object v0, p0, Lfba;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 173
    iget-object v1, p0, Lfba;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/campaign/CampaignFragment;->a(Lcom/wandoujia/p4/campaign/CampaignFragment;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c050d
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
