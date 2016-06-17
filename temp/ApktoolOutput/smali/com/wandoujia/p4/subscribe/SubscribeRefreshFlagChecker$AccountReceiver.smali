.class public Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker$AccountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SubscribeRefreshFlagChecker.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker$AccountReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v1, "pheonix.intent.action.LOGIN_SUCCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pheonix.intent.action.ACCOUNT_LOGIN_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 47
    check-cast v0, Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    .line 48
    sget-object v1, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->LOGIN:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    if-ne v0, v1, :cond_0

    .line 52
    sget-object v0, Lcom/wandoujia/account/dto/Role;->ROLE_SUBSCRIBER:Lcom/wandoujia/account/dto/Role;

    invoke-static {v0}, Lchv;->a(Lcom/wandoujia/account/dto/Role;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "SUBSCRIBE"

    invoke-static {v0}, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_2
    const-string v1, "pheonix.intent.action.LOGOUT_SUCCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "SUBSCRIBE"

    invoke-static {v0}, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
