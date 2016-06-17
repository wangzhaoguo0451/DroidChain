.class public Lcom/wandoujia/account/activities/WDJWXEntryActivity;
.super Landroid/app/Activity;
.source "WDJWXEntryActivity.java"

# interfaces
.implements Lcbp;


# instance fields
.field private a:Lcmm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    if-nez p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/wandoujia/account/activities/WDJWXEntryActivity;->finish()V

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    sget-object v0, Ld;->f:Lcmm;

    iput-object v0, p0, Lcom/wandoujia/account/activities/WDJWXEntryActivity;->a:Lcmm;

    .line 42
    iget-object v0, p0, Lcom/wandoujia/account/activities/WDJWXEntryActivity;->a:Lcmm;

    if-eqz v0, :cond_2

    .line 43
    if-nez p1, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "_mmessage_content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_mmessage_sdkVersion"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "_mmessage_appPackage"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    :cond_1
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    invoke-static {v0}, Lcby;->a(Ljava/lang/String;)V

    .line 45
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/wandoujia/account/activities/WDJWXEntryActivity;->finish()V

    goto :goto_0

    .line 43
    :cond_3
    const-string v0, "wx_token_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "com.tencent.mm.openapi.token"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    const-string v5, "_mmessage_checksum"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v0, :cond_7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "mMcShCsTr"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ld;->d([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v5, v0}, Lcbo;->a([B[B)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    invoke-static {v0}, Lcby;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v0, "_wxapi_command_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance v0, Lcbr;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcbr;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Lcbp;->a(Lcbm;)V

    goto :goto_2

    :pswitch_1
    new-instance v0, Lcbt;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcbt;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Lcbp;->a(Lcbm;)V

    goto :goto_2

    :pswitch_2
    new-instance v0, Lcbn;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcbn;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Lcbp;->a(Lcbl;)V

    goto/16 :goto_2

    :pswitch_3
    new-instance v0, Lcbu;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcbu;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Lcbp;->a(Lcbl;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(Lcbl;)V
    .locals 4
    .parameter

    .prologue
    .line 50
    const-string v0, "WDJWXEntryActivity"

    const-string v1, "on WXRequest: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public a(Lcbm;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 55
    const-string v0, "WDJWXEntryActivity"

    const-string v1, "on WXResponse: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Lcbm;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget v0, p1, Lcbm;->a:I

    if-nez v0, :cond_0

    move-object v0, p1

    .line 61
    check-cast v0, Lcbr;

    iget-object v0, v0, Lcbr;->b:Ljava/lang/String;

    .line 62
    check-cast p1, Lcbr;

    iget-object v1, p1, Lcbr;->c:Ljava/lang/String;

    .line 64
    const-string v2, "WDJWXEntryActivity"

    const-string v3, "code %s, url %s, state %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const/4 v5, 0x0

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v1, p0, Lcom/wandoujia/account/activities/WDJWXEntryActivity;->a:Lcmm;

    iget-object v1, v1, Lcmm;->a:Lcii;

    iget-object v2, p0, Lcom/wandoujia/account/activities/WDJWXEntryActivity;->a:Lcmm;

    iget-object v2, v2, Lcmm;->b:Ljava/lang/String;

    new-instance v3, Lcio;

    invoke-direct {v3, v1, v0, v2}, Lcio;-><init>(Lcii;Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v0}, Lcio;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/wandoujia/account/activities/WDJWXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/account/activities/WDJWXEntryActivity;->a(Landroid/content/Intent;)V

    .line 28
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 74
    const/4 v0, 0x0

    sput-object v0, Ld;->f:Lcmm;

    .line 75
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/wandoujia/account/activities/WDJWXEntryActivity;->a(Landroid/content/Intent;)V

    .line 33
    return-void
.end method
