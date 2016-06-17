.class public final Lcnp;
.super Ljava/lang/Object;
.source "SDKSystemAccountStorage.java"

# interfaces
.implements Lcnn;


# static fields
.field private static b:Landroid/content/SharedPreferences;

.field private static c:Landroid/content/Context;

.field private static e:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private a:Landroid/accounts/AccountManager;

.field private final d:Lcns;

.field private f:J

.field private g:Landroid/os/Handler;

.field private h:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcnp;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcns;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcns;-><init>(Lcnp;B)V

    iput-object v0, p0, Lcnp;->d:Lcns;

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcnp;->f:J

    .line 49
    iget-object v0, p0, Lcnp;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcnp;->h:Landroid/os/HandlerThread;

    .line 51
    iget-object v0, p0, Lcnp;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcnp;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcnp;->g:Landroid/os/Handler;

    .line 54
    :cond_0
    sget-object v0, Lcnp;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcnp;->a:Landroid/accounts/AccountManager;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcnp;->c:Landroid/content/Context;

    .line 57
    invoke-static {}, Lcnp;->j()Landroid/content/SharedPreferences;

    .line 58
    iget-object v0, p0, Lcnp;->a:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcnp;->d:Lcns;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 59
    invoke-direct {p0}, Lcnp;->i()V

    .line 61
    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/os/Bundle;)V
    .locals 13
    .parameter

    .prologue
    .line 28
    invoke-static {}, Lcnp;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "WDJ_ACCOUNT_NICKNAME"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WDJ_ACCOUNT_REGISTER_SOURCE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WDJ_ACCOUNT_USERNAME"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WDJ_ACCOUNT_UID"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "WDJ_ACCOUNT_AVATAR"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "WDJ_AUTH"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "WDJ_ACCOUNT_TELEPHONE"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "WDJ_ACCOUNT_EMAIL"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "WDJ_ACCOUNT_TELEPHONE_VALIDATED"

    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "WDJ_ACCOUNT_EMAIL_VALIDATED"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "WDJ_ACCOUNT_COMPLETED"

    invoke-virtual {p0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lchv;->z()Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    invoke-static {v1}, Lchv;->f(Ljava/lang/String;)V

    invoke-static {v2}, Lchv;->m(Ljava/lang/String;)V

    invoke-static {v3}, Lchv;->a(Ljava/lang/String;)V

    invoke-static {v4}, Lchv;->d(Ljava/lang/String;)V

    invoke-static {v11}, Lchv;->b(Z)V

    invoke-static {v5}, Lchv;->e(Ljava/lang/String;)V

    invoke-static {v7}, Lchv;->h(Ljava/lang/String;)V

    invoke-static {v8}, Lchv;->g(Ljava/lang/String;)V

    invoke-static {v10}, Lchv;->a(Z)V

    invoke-static {v9}, Lchv;->c(Z)V

    invoke-static {v6}, Lchv;->b(Ljava/lang/String;)V

    const-string v1, "WDJ_ACCOUNT_NICKNAME"

    const-string v2, "WDJ_ACCOUNT_NICKNAME"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "WDJ_ACCOUNT_REGISTER_SOURCE"

    const-string v2, "WDJ_ACCOUNT_REGISTER_SOURCE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "WDJ_AUTH"

    const-string v2, "WDJ_AUTH"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "WDJ_ACCOUNT_USERNAME"

    const-string v2, "WDJ_ACCOUNT_USERNAME"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "WDJ_ACCOUNT_UID"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "WDJ_ACCOUNT_COMPLETED"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "WDJ_ACCOUNT_AVATAR"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "WDJ_ACCOUNT_EMAIL"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "WDJ_ACCOUNT_TELEPHONE"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "WDJ_ACCOUNT_TELEPHONE_VALIDATED"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "WDJ_ACCOUNT_EMAIL_VALIDATED"

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-le v1, v2, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic a(Lcnp;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcnp;->i()V

    return-void
.end method

.method static synthetic b(Lcnp;)J
    .locals 2
    .parameter

    .prologue
    .line 28
    iget-wide v0, p0, Lcnp;->f:J

    return-wide v0
.end method

.method private static c(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter

    .prologue
    .line 230
    sget-object v0, Lcnp;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 361
    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v8

    .line 363
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 364
    const-string v0, "WDJ_ACCOUNT_USERNAME"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v0, "WDJ_ACCOUNT_NICKNAME"

    invoke-virtual {v4, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v0, "WDJ_ACCOUNT_REGISTER_SOURCE"

    invoke-static {}, Lchv;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v0, "WDJ_AUTH"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v0, "WDJ_ACCOUNT_OPERATION"

    const-string v1, "WDJ_ACCOUNT_SAVE_ACCOUNT"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v0, "WDJ_ACCOUNT_UID"

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v0, "WDJ_ACCOUNT_COMPLETED"

    invoke-static {}, Lchv;->o()Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 374
    const-string v0, "WDJ_ACCOUNT_AVATAR"

    invoke-static {}, Lchv;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v0, "WDJ_ACCOUNT_TELEPHONE"

    invoke-static {}, Lchv;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v0, "WDJ_ACCOUNT_EMAIL"

    invoke-static {}, Lchv;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v0, "WDJ_ACCOUNT_TELEPHONE_VALIDATED"

    invoke-static {}, Lchv;->p()Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 379
    const-string v0, "WDJ_ACCOUNT_EMAIL_VALIDATED"

    invoke-static {}, Lchv;->n()Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    :try_start_0
    iget-object v0, p0, Lcnp;->a:Landroid/accounts/AccountManager;

    const-string v1, "com.wandoujia"

    const-string v2, "wandoujia_auth_token"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    invoke-static {}, Lcnp;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 393
    const-string v1, "WDJ_ACCOUNT_NICKNAME"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 395
    const-string v1, "WDJ_ACCOUNT_REGISTER_SOURCE"

    invoke-static {}, Lchv;->s()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 397
    const-string v1, "WDJ_AUTH"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 398
    const-string v1, "WDJ_ACCOUNT_USERNAME"

    invoke-static {}, Lchv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 400
    const-string v1, "WDJ_ACCOUNT_TELEPHONE"

    invoke-static {}, Lchv;->r()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 402
    const-string v1, "WDJ_ACCOUNT_EMAIL"

    invoke-static {}, Lchv;->q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 404
    const-string v1, "WDJ_ACCOUNT_UID"

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 405
    const-string v1, "WDJ_ACCOUNT_COMPLETED"

    invoke-static {}, Lchv;->o()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 407
    const-string v1, "WDJ_ACCOUNT_EMAIL_VALIDATED"

    invoke-static {}, Lchv;->n()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 409
    const-string v1, "WDJ_ACCOUNT_TELEPHONE_VALIDATED"

    invoke-static {}, Lchv;->p()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 411
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    .line 412
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 416
    :goto_1
    return-void

    .line 414
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 387
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static f()V
    .locals 3

    .prologue
    .line 422
    sget-object v0, Lcnp;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-static {}, Lcnp;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 426
    const-string v1, "WDJ_AUTH"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 427
    const-string v1, "WDJ_ACCOUNT_UID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 428
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-le v1, v2, :cond_1

    .line 429
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 431
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic g()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcnp;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static h()V
    .locals 4

    .prologue
    .line 67
    sget-object v1, Lcnp;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcnp;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 70
    :try_start_1
    sget-object v0, Lcnp;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private i()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 79
    sget-object v1, Lcnp;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lcnp;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v0, "WDJ_ACCOUNT_OPERATION"

    const-string v1, "WDJ_ACCOUNT_GET_ACCOUNT"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcnp;->a:Landroid/accounts/AccountManager;

    const-string v1, "com.wandoujia"

    const-string v2, "wandoujia_auth_token"

    new-instance v6, Lcnq;

    invoke-direct {v6, p0, v5}, Lcnq;-><init>(Lcnp;B)V

    iget-object v7, p0, Lcnp;->g:Landroid/os/Handler;

    move-object v5, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 91
    return-void

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static declared-synchronized j()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 223
    const-class v1, Lcnp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcnp;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 224
    const-string v0, "com.wandoujia.account.sdk"

    invoke-static {v0}, Lcnp;->c(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcnp;->b:Landroid/content/SharedPreferences;

    .line 226
    :cond_0
    sget-object v0, Lcnp;->b:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 280
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-static {}, Lchv;->c()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-direct {p0, v0, p1}, Lcnp;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 321
    :cond_0
    invoke-static {}, Lcnp;->f()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-direct {p0, p1, p2}, Lcnp;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    invoke-static {}, Lcnp;->h()V

    .line 293
    const-string v0, "com.wandoujia.account.sdk"

    invoke-static {v0}, Lcnp;->c(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WDJ_AUTH"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 356
    const-string v0, ""

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 337
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 304
    invoke-static {}, Lcnp;->h()V

    .line 305
    const-string v0, "com.wandoujia.account.sdk"

    invoke-static {v0}, Lcnp;->c(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WDJ_ACCOUNT_USERNAME"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 342
    invoke-static {}, Lcnp;->h()V

    .line 343
    const-string v0, "com.wandoujia.account.sdk"

    invoke-static {v0}, Lcnp;->c(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WDJ_ACCOUNT_UID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 349
    invoke-static {}, Lcnp;->h()V

    .line 350
    const-string v0, "com.wandoujia.account.sdk"

    invoke-static {v0}, Lcnp;->c(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WDJ_ACCOUNT_NICKNAME"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
