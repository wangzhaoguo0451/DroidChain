.class public Lcom/wandoujia/p4/connection/ui/ConnectionActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "ConnectionActivity.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    .line 37
    new-instance v0, Lfou;

    invoke-direct {v0, p0}, Lfou;-><init>(Lcom/wandoujia/p4/connection/ui/ConnectionActivity;)V

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->a:Landroid/os/Handler;

    .line 181
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 111
    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {}, Lfpv;->c()Lfpv;

    move-result-object v1

    invoke-virtual {v1}, Lfpv;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    invoke-direct {p0, v0}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 117
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "phoenix.intent.extra.USER_AGENT"

    const-string v3, "phoenix"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "phoenix.intent.extra.SOURCE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lfop;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 118
    new-instance v1, Lfov;

    invoke-direct {v1, p0, v0}, Lfov;-><init>(Lcom/wandoujia/p4/connection/ui/ConnectionActivity;Landroid/net/Uri;)V

    invoke-virtual {v1}, Lfov;->start()V

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)V
    .locals 8
    .parameter

    .prologue
    .line 146
    invoke-static {}, Lfpv;->c()Lfpv;

    move-result-object v0

    invoke-virtual {v0}, Lfpv;->h()Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string v0, "callback"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v2, "pcid"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 151
    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 152
    if-eqz v3, :cond_2

    .line 153
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 154
    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "?"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "&"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v5, "authcode="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&udid="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->a(Ljava/lang/String;)V

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    const-string v5, "?"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 161
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 163
    :try_start_0
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://apppush.wandoujia.com/v1/push"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?did="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&data="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/wandoujia/p4/connection/ui/ConnectionActivity$PushContent;

    const-string v4, "connect"

    invoke-static {p0}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5, v1}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity$PushContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static synthetic a(Lcom/wandoujia/p4/connection/ui/ConnectionActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/connection/ui/ConnectionActivity;Landroid/os/Message;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->b:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->b:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->a()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->b()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x19 -> :sswitch_1
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 175
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 176
    new-instance v1, Lfwu;

    invoke-direct {v1}, Lfwu;-><init>()V

    .line 177
    iput-object v0, v1, Lfwu;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 178
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfvu;->executeAsync(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;)Ljava/util/concurrent/Future;

    .line 179
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 95
    new-instance v0, Lgav;

    invoke-direct {v0}, Lgav;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "conn.wandoujia.com/qr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lfop;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 97
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 98
    return-void

    .line 95
    :cond_1
    new-instance v0, Lexm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lexm;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lexm;->a()V

    goto :goto_0

    :cond_2
    new-instance v0, Lhoq;

    invoke-direct {v0, p0}, Lhoq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e04fd

    invoke-virtual {v0, v1}, Lhoq;->a(I)Lhoq;

    move-result-object v0

    const v1, 0x7f0e04ff

    invoke-virtual {v0, v1}, Lhoq;->b(I)Lhoq;

    move-result-object v0

    new-instance v1, Lgax;

    invoke-direct {v1}, Lgax;-><init>()V

    invoke-virtual {v0, v1}, Lhoq;->a(Landroid/content/DialogInterface$OnKeyListener;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e04fe

    new-instance v2, Lgaw;

    invoke-direct {v2}, Lgaw;-><init>()V

    invoke-virtual {v0, v1, v2}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {p0}, Lfop;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    new-instance v0, Lexm;

    invoke-direct {v0, p0, v2}, Lexm;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lexm;->a()V

    .line 53
    :cond_0
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v0, "phoenix.intent.action.OPEN_CONN_ACTIVITY"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->finish()V

    .line 62
    :goto_2
    return-void

    .line 50
    :cond_2
    invoke-static {p0}, Lfop;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lexm;

    invoke-direct {v0, p0, v1}, Lexm;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lexm;->a()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 53
    goto :goto_1

    .line 57
    :cond_4
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    const v1, 0x7f0c010e

    invoke-virtual {v0, v1}, Ls;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->b:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    .line 60
    const v0, 0x7f0e05b0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->setTitle(I)V

    .line 61
    invoke-virtual {p0}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->a(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->a(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onResume()V

    .line 82
    invoke-static {}, Lfpv;->c()Lfpv;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lfpv;->a(Landroid/os/Handler;)V

    .line 83
    invoke-static {}, Lfop;->a()Lfop;

    move-result-object v0

    invoke-virtual {v0}, Lfop;->b()V

    .line 84
    return-void
.end method
