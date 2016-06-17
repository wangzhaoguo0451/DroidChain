.class public Lcom/wandoujia/p4/account/manager/AccountUtil;
.super Ljava/lang/Object;
.source "AccountUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/account/AccountParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    if-nez p0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/wandoujia/account/AccountParams;->m:Z

    .line 118
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v0, v0, Letz;->a:Lcmm;

    const-class v1, Lcom/wandoujia/p4/account/activity/PhoenixAccountActivity;

    invoke-static {p0, v0, p1, v1}, Ld;->a(Landroid/content/Context;Lcmm;Lcom/wandoujia/account/AccountParams;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/account/AccountParams;Lcmk;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v0, v0, Letz;->a:Lcmm;

    iget-object v0, v0, Lcmm;->f:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {p0, p1}, Lcom/wandoujia/p4/account/manager/AccountUtil;->a(Landroid/content/Context;Lcom/wandoujia/account/AccountParams;)V

    .line 136
    return-void
.end method

.method public static a(Lcom/wandoujia/account/AccountParams;Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 43
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->h:Z

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->LOGIN:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->QQ_LOGIN:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->SINA_LOGIN:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->RENREN_LOGIN:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    if-ne p1, v0, :cond_5

    .line 55
    :cond_0
    invoke-static {}, Lgcb;->b()Lcom/wandoujia/p4/subscribe/config/SubscribeOnlineConfig;

    .line 57
    iget-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->g:Z

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "pheonix.intent.action.ACCOUNT_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    const-string v1, "showGuide"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 81
    :cond_1
    :goto_0
    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->EMAIL_REGISTER:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->TEL_REGISTER:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    if-ne p1, v0, :cond_3

    .line 83
    :cond_2
    invoke-static {v2}, Lchv;->e(Z)V

    .line 86
    :cond_3
    if-eqz p0, :cond_4

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "pheonix.intent.action.ACCOUNT_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v1, "source"

    iget-object v2, p0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    :cond_4
    return-void

    .line 63
    :cond_5
    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->EMAIL_REGISTER:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    if-eq p1, v0, :cond_6

    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->TEL_REGISTER:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    if-ne p1, v0, :cond_1

    .line 65
    :cond_6
    iget-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->g:Z

    if-eqz v0, :cond_7

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "pheonix.intent.action.ACCOUNT_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    const-string v1, "showGuide"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    :cond_7
    invoke-static {}, Lgcb;->b()Lcom/wandoujia/p4/subscribe/config/SubscribeOnlineConfig;

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/account/activity/AccountModifyProfileActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static native getAccountSourceNative(Landroid/content/Context;)Ljava/lang/String;
.end method
