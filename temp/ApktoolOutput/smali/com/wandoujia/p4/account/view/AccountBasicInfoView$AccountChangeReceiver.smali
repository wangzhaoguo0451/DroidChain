.class Lcom/wandoujia/p4/account/view/AccountBasicInfoView$AccountChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountBasicInfoView.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/wandoujia/p4/account/view/AccountBasicInfoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/account/view/AccountBasicInfoView;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 142
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView$AccountChangeReceiver;->a:Ljava/lang/ref/WeakReference;

    .line 143
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView$AccountChangeReceiver;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;

    .line 149
    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    if-eqz p2, :cond_0

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    const-string v2, "pheonix.intent.action.LOGIN_SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "pheonix.intent.action.REGISTER_SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "account.intent.action.MODIFY_SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    :cond_2
    invoke-static {v0}, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->a(Lcom/wandoujia/p4/account/view/AccountBasicInfoView;)V

    goto :goto_0

    .line 166
    :cond_3
    const-string v2, "pheonix.intent.action.LOGOUT_SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-static {v0}, Lcom/wandoujia/p4/account/view/AccountBasicInfoView;->b(Lcom/wandoujia/p4/account/view/AccountBasicInfoView;)V

    goto :goto_0
.end method
