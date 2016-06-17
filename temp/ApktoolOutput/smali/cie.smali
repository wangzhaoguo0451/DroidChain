.class public final Lcie;
.super Ljava/lang/Object;
.source "AccountProcesser.java"


# instance fields
.field public a:Z

.field public b:Landroid/app/Activity;

.field c:Landroid/content/Context;

.field public d:Z

.field public e:Z

.field public f:Lcom/wandoujia/account/AccountParams;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcie;->a:Z

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcie;->c:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public static a(IIZLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    if-nez p0, :cond_0

    .line 244
    const-string v0, "account_normal_login"

    move-object v1, v0

    .line 255
    :goto_0
    if-eqz p2, :cond_3

    .line 256
    const-string v0, "success"

    .line 261
    :goto_1
    if-nez p0, :cond_4

    .line 262
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 263
    const-string v3, "account_login_type"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "account_login_status"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "account_login_src"

    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :goto_2
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 247
    const-string v0, "tel"

    move-object v1, v0

    goto :goto_0

    .line 248
    :cond_1
    if-nez p1, :cond_2

    .line 249
    const-string v0, "email"

    move-object v1, v0

    goto :goto_0

    .line 251
    :cond_2
    const-string v0, "sms"

    move-object v1, v0

    goto :goto_0

    .line 258
    :cond_3
    const-string v0, "failed"

    goto :goto_1

    .line 270
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 271
    const-string v3, "account_register_type"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v1, "account_register_status"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v0, "account_register_src"

    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/wandoujia/account/AccountParams;Landroid/app/Activity;)Lcie;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcie;->f:Lcom/wandoujia/account/AccountParams;

    .line 63
    iput-object p2, p0, Lcie;->b:Landroid/app/Activity;

    .line 64
    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Lcie;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    iput-boolean p2, p0, Lcie;->a:Z

    .line 75
    iput-object p1, p0, Lcie;->g:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcie;->c:Landroid/content/Context;

    invoke-static {v0}, Ld;->o(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcie;->d:Z

    .line 77
    iget-object v0, p0, Lcie;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcie;->e:Z

    .line 79
    return-object p0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Boolean;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 87
    iget-boolean v0, p0, Lcie;->a:Z

    if-eqz v0, :cond_3

    .line 88
    iget-boolean v0, p0, Lcie;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcie;->e:Z

    if-nez v0, :cond_2

    .line 89
    const/4 v0, 0x2

    iget-object v1, p0, Lcie;->f:Lcom/wandoujia/account/AccountParams;

    iget-object v1, v1, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    invoke-static {v2, v0, v2, v1}, Lcie;->a(IIZLjava/lang/String;)V

    .line 97
    :goto_0
    if-eqz p3, :cond_1

    .line 98
    iget-object v0, p0, Lcie;->f:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->o:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    .line 100
    :try_start_0
    iget-object v0, p0, Lcie;->f:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->o:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_1
    iget-object v0, p0, Lcie;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcie;->b:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 132
    iget-object v0, p0, Lcie;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 135
    :cond_1
    return-void

    .line 91
    :cond_2
    iget-object v0, p0, Lcie;->f:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    invoke-static {v2, v2, v2, v0}, Lcie;->a(IIZLjava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcie;->f:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    invoke-static {v2, v4, v2, v0}, Lcie;->a(IIZLjava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_4
    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 106
    iget-boolean v0, p0, Lcie;->a:Z

    if-eqz v0, :cond_5

    .line 107
    iget-object v0, p0, Lcie;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcji;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcie;->b:Landroid/app/Activity;

    check-cast v0, Lcji;

    iget-object v1, p0, Lcie;->c:Landroid/content/Context;

    sget-object v2, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->TEL_REGISTER:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    iget-object v3, p0, Lcie;->f:Lcom/wandoujia/account/AccountParams;

    invoke-interface {v0, v1, v2, v3}, Lcji;->a(Landroid/content/Context;Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;Lcom/wandoujia/account/AccountParams;)V

    goto :goto_1

    .line 113
    :cond_5
    iget-object v0, p0, Lcie;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcji;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcie;->b:Landroid/app/Activity;

    check-cast v0, Lcji;

    iget-object v1, p0, Lcie;->c:Landroid/content/Context;

    sget-object v2, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->EMAIL_REGISTER:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    iget-object v3, p0, Lcie;->f:Lcom/wandoujia/account/AccountParams;

    invoke-interface {v0, v1, v2, v3}, Lcji;->a(Landroid/content/Context;Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;Lcom/wandoujia/account/AccountParams;)V

    goto :goto_1

    .line 120
    :cond_6
    iget-object v0, p0, Lcie;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcji;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcie;->b:Landroid/app/Activity;

    check-cast v0, Lcji;

    iget-object v1, p0, Lcie;->c:Landroid/content/Context;

    sget-object v2, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->LOGIN:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    iget-object v3, p0, Lcie;->f:Lcom/wandoujia/account/AccountParams;

    invoke-interface {v0, v1, v2, v3}, Lcji;->a(Landroid/content/Context;Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;Lcom/wandoujia/account/AccountParams;)V

    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    goto :goto_1
.end method
