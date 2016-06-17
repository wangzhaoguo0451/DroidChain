.class public final Lchv;
.super Ljava/lang/Object;
.source "AccountConfig.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/content/SharedPreferences;

.field private static c:Lcnn;

.field private static final d:Ljava/util/concurrent/ExecutorService;

.field private static e:Lcom/wandoujia/account/storage/AccountStorageType;

.field private static f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lchv;->c:Lcnn;

    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lchv;->d:Ljava/util/concurrent/ExecutorService;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lchv;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lchv;->g:Landroid/os/Handler;

    return-void
.end method

.method public static A()J
    .locals 4

    .prologue
    .line 775
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_WDJ_ACCOUNT_LAST_VERIFIED_TIME"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static B()V
    .locals 4

    .prologue
    .line 782
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 783
    const-string v1, "KEY_WDJ_ACCOUNT_LAST_VERIFIED_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 784
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 785
    return-void
.end method

.method public static C()Z
    .locals 3

    .prologue
    .line 794
    invoke-static {}, Lchv;->I()V

    .line 795
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_WDJ_TRUSTED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static D()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 876
    const-string v0, ""

    invoke-static {v0}, Lchv;->d(Ljava/lang/String;)V

    .line 877
    const-string v0, ""

    invoke-static {v0}, Lchv;->b(Ljava/lang/String;)V

    .line 878
    invoke-static {v2, v3}, Lchv;->a(J)V

    .line 879
    invoke-static {v2, v3}, Lchv;->b(J)V

    .line 880
    invoke-static {v2, v3}, Lchv;->c(J)V

    .line 881
    const-string v0, ""

    invoke-static {v0}, Lchv;->e(Ljava/lang/String;)V

    .line 882
    const-string v0, ""

    invoke-static {v0}, Lchv;->n(Ljava/lang/String;)V

    .line 883
    const-string v0, ""

    invoke-static {v0}, Lchv;->o(Ljava/lang/String;)V

    .line 884
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Lchv;->a(Ljava/util/Set;)V

    .line 885
    invoke-static {}, Lcnp;->f()V

    .line 886
    return-void
.end method

.method static synthetic E()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lchv;->I()V

    return-void
.end method

.method static synthetic F()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lchv;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private static declared-synchronized G()Lcnn;
    .locals 5

    .prologue
    .line 106
    const-class v1, Lchv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lchv;->c:Lcnn;

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lchv;->e:Lcom/wandoujia/account/storage/AccountStorageType;

    sget-object v2, Lcom/wandoujia/account/storage/AccountStorageType;->SYSTEM:Lcom/wandoujia/account/storage/AccountStorageType;

    if-ne v0, v2, :cond_1

    .line 108
    new-instance v0, Lcnt;

    sget-object v2, Lchv;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcnt;-><init>(Landroid/content/Context;)V

    sput-object v0, Lchv;->c:Lcnn;

    .line 109
    new-instance v0, Lcno;

    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v0, v2}, Lcno;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0}, Lcno;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lchv;->c:Lcnn;

    invoke-interface {v2}, Lcnn;->a()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcno;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcno;->b()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lchv;->c:Lcnn;

    invoke-interface {v4, v2, v3}, Lcnn;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, v0, Lcno;->a:Landroid/content/SharedPreferences;

    const-string v3, "WDJ_AUTH"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcno;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "WDJ_AUTH"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcno;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 119
    :cond_0
    :goto_0
    sget-object v0, Lchv;->c:Lcnn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 110
    :cond_1
    :try_start_1
    sget-object v0, Lchv;->e:Lcom/wandoujia/account/storage/AccountStorageType;

    sget-object v2, Lcom/wandoujia/account/storage/AccountStorageType;->SHARED_PREFERENCE:Lcom/wandoujia/account/storage/AccountStorageType;

    if-ne v0, v2, :cond_2

    .line 111
    new-instance v0, Lcno;

    const-string v2, "com.wandoujia.account.sdk.perference"

    invoke-static {v2}, Lchv;->q(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v0, v2}, Lcno;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v0, Lchv;->c:Lcnn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 113
    :cond_2
    :try_start_2
    sget-object v0, Lchv;->e:Lcom/wandoujia/account/storage/AccountStorageType;

    sget-object v2, Lcom/wandoujia/account/storage/AccountStorageType;->SDK:Lcom/wandoujia/account/storage/AccountStorageType;

    if-ne v0, v2, :cond_3

    .line 114
    new-instance v0, Lcnp;

    sget-object v2, Lchv;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcnp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lchv;->c:Lcnn;

    goto :goto_0

    .line 115
    :cond_3
    sget-object v0, Lchv;->e:Lcom/wandoujia/account/storage/AccountStorageType;

    sget-object v2, Lcom/wandoujia/account/storage/AccountStorageType;->FIVE:Lcom/wandoujia/account/storage/AccountStorageType;

    if-ne v0, v2, :cond_0

    .line 116
    new-instance v0, Lcnl;

    sget-object v2, Lchv;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcnl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lchv;->c:Lcnn;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static declared-synchronized H()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 136
    const-class v1, Lchv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lchv;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 137
    const-string v0, "com.wandoujia.account"

    invoke-static {v0}, Lchv;->q(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lchv;->b:Landroid/content/SharedPreferences;

    .line 139
    :cond_0
    sget-object v0, Lchv;->b:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static I()V
    .locals 2

    .prologue
    .line 397
    sget-object v0, Lchv;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you must init account!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lchv;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(J)V
    .locals 2
    .parameter

    .prologue
    .line 190
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    const-string v1, "ACTIVE_SINA"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 193
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/account/storage/AccountStorageType;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lchv;->a:Landroid/content/Context;

    .line 85
    sput-object p1, Lchv;->e:Lcom/wandoujia/account/storage/AccountStorageType;

    .line 86
    return-void
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 152
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    :goto_0
    return-void

    .line 154
    :cond_0
    sget-object v0, Lchv;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lchw;

    invoke-direct {v1, p0}, Lchw;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Lcia;)V
    .locals 2
    .parameter

    .prologue
    .line 746
    sget-object v0, Lchv;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 749
    invoke-static {}, Lchv;->t()Ljava/lang/String;

    invoke-virtual {p0}, Lcia;->a()V

    .line 772
    :goto_0
    return-void

    .line 751
    :cond_0
    sget-object v0, Lchv;->g:Landroid/os/Handler;

    new-instance v1, Lchx;

    invoke-direct {v1, p0}, Lchx;-><init>(Lcia;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 759
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lchy;

    invoke-direct {v1, p0}, Lchy;-><init>(Lcia;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 170
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 171
    const-string v1, "WDJ_USERNAME"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 173
    return-void
.end method

.method public static a(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/wandoujia/account/dto/Role;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/Role;

    .line 822
    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/Role;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 828
    :cond_1
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 829
    const-string v2, "WDJ_ROLE"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 830
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 831
    const-string v0, "ACCOUNT_STORAGE_KEY_ROLE"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lchv;->G()Lcnn;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcnn;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 832
    return-void
.end method

.method public static a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 489
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 491
    const-string v1, "KEY_WDJ_EMAIL_VALIDATED"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 494
    :cond_0
    return-void
.end method

.method public static a(Lcom/wandoujia/account/dto/Role;)Z
    .locals 4
    .parameter

    .prologue
    .line 854
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WDJ_ROLE"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ACCOUNT_STORAGE_KEY_ROLE"

    invoke-static {}, Lchv;->G()Lcnn;

    move-result-object v1

    invoke-interface {v1, v0}, Lcnn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/account/dto/Role;->valueOf(Ljava/lang/String;)Lcom/wandoujia/account/dto/Role;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 855
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/Role;

    .line 856
    invoke-virtual {v0, p0}, Lcom/wandoujia/account/dto/Role;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 857
    const/4 v0, 0x1

    .line 860
    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-static {}, Lchv;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {p1}, Lchv;->b(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lchv;->G()Lcnn;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcnn;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 97
    sget-object v1, Lchv;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lchv;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    sget-object v0, Lchv;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 100
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    .line 102
    invoke-static {}, Lchv;->G()Lcnn;

    .line 103
    return-void

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(J)V
    .locals 2
    .parameter

    .prologue
    .line 201
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 202
    const-string v1, "ACTIVE_QQ"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 204
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 239
    invoke-static {}, Lchv;->G()Lcnn;

    move-result-object v0

    invoke-interface {v0, p0}, Lcnn;->a(Ljava/lang/String;)Z

    .line 240
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 241
    const-string v1, "WDJ_AUTH"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 242
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 243
    return-void
.end method

.method public static b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 501
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 503
    const-string v1, "KEY_WDJ_ACCOUNT_COMPLETED"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 504
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 506
    :cond_0
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    invoke-static {}, Lchv;->I()V

    .line 182
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WDJ_USERNAME"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-static {}, Lchv;->G()Lcnn;

    move-result-object v0

    invoke-interface {v0}, Lcnn;->c()Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_0
    return-object v0
.end method

.method public static c(J)V
    .locals 2
    .parameter

    .prologue
    .line 212
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    const-string v1, "ACTIVE_RENREN"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 215
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 275
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 276
    const-string v1, "KEY_WDJ_SECCODE"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 278
    return-void
.end method

.method public static c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 513
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 515
    const-string v1, "KEY_WDJ_TEL_VALIDATED"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 516
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 518
    :cond_0
    return-void
.end method

.method public static d()J
    .locals 4

    .prologue
    .line 196
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ACTIVE_SINA"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 197
    return-wide v0
.end method

.method public static d(J)V
    .locals 2
    .parameter

    .prologue
    .line 223
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 224
    const-string v1, "ACTIVE_WECHAT"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 225
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 226
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 409
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 411
    const-string v1, "WDJ_UID"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 412
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 414
    :cond_0
    return-void
.end method

.method public static d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 634
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 635
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 636
    const-string v1, "KEY_WDJ_NEED_UPDATE_PASSWORD"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 637
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 639
    :cond_0
    return-void
.end method

.method public static e()J
    .locals 4

    .prologue
    .line 207
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ACTIVE_QQ"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 208
    return-wide v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 417
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 418
    const-string v1, "WDJ_AVATAR"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 419
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 420
    return-void
.end method

.method public static e(Z)V
    .locals 2
    .parameter

    .prologue
    .line 700
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 701
    const-string v1, "KEY_WDJ_NEED_UPDATE_PROFILE"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 702
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 703
    return-void
.end method

.method public static f()J
    .locals 4

    .prologue
    .line 218
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ACTIVE_RENREN"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 219
    return-wide v0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 431
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 433
    const-string v1, "WDJ_NICKNAME"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 434
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 436
    :cond_0
    return-void
.end method

.method public static f(Z)V
    .locals 2
    .parameter

    .prologue
    .line 788
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 789
    const-string v1, "KEY_WDJ_TRUSTED"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 790
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 791
    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 525
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 527
    const-string v1, "KEY_WDJ_EMAIL"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 528
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 530
    :cond_0
    return-void
.end method

.method public static g()Z
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lchv;->e:Lcom/wandoujia/account/storage/AccountStorageType;

    sget-object v1, Lcom/wandoujia/account/storage/AccountStorageType;->SDK:Lcom/wandoujia/account/storage/AccountStorageType;

    if-ne v0, v1, :cond_0

    .line 252
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 281
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_WDJ_SECCODE"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 537
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 538
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 539
    const-string v1, "KEY_WDJ_TELEPHONE"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 540
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 542
    :cond_0
    return-void
.end method

.method public static i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 292
    invoke-static {}, Lchv;->I()V

    .line 294
    invoke-static {}, Lchv;->G()Lcnn;

    move-result-object v0

    if-nez v0, :cond_1

    .line 295
    const-string v0, ""

    .line 308
    :cond_0
    :goto_0
    return-object v0

    .line 297
    :cond_1
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WDJ_AUTH"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 299
    invoke-static {}, Lchv;->G()Lcnn;

    move-result-object v0

    invoke-interface {v0}, Lcnn;->b()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 301
    invoke-static {v0}, Lchv;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 305
    :cond_3
    const-string v1, "unready"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    const-string v0, ""

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 550
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 551
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 552
    const-string v1, "KEY_WDJ_SINA_ACCOUNT_NICK"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 553
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 555
    :cond_0
    return-void
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    invoke-static {}, Lchv;->I()V

    .line 405
    invoke-static {}, Lchv;->G()Lcnn;

    move-result-object v0

    invoke-interface {v0}, Lcnn;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 562
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 564
    const-string v1, "KEY_WDJ_QQ_ACCOUNT_NICK"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 565
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 567
    :cond_0
    return-void
.end method

.method public static k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 423
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WDJ_AVATAR"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://account.wandoujia.com/avatar.php?uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    :cond_0
    return-object v0
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 575
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 577
    const-string v1, "KEY_WDJ_RENREN_ACCOUNT_NICK"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 578
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 580
    :cond_0
    return-void
.end method

.method public static l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 444
    invoke-static {}, Lchv;->I()V

    .line 445
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WDJ_NICKNAME"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    invoke-static {}, Lchv;->G()Lcnn;

    move-result-object v0

    invoke-interface {v0}, Lcnn;->e()Ljava/lang/String;

    move-result-object v0

    .line 449
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    const-string v0, ""

    .line 452
    :cond_1
    return-object v0
.end method

.method public static l(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 587
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 589
    const-string v1, "KEY_WDJ_WECHAT_ACCOUNT_NICK"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 590
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 592
    :cond_0
    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 600
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 602
    const-string v1, "KEY_WDJ_REGISTER_SOURCE"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 603
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 605
    :cond_0
    return-void
.end method

.method public static m()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 461
    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 462
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xb

    if-eq v0, v3, :cond_1

    .line 480
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 467
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 470
    const/4 v3, 0x3

    if-lt v0, v3, :cond_2

    const/4 v3, 0x6

    if-le v0, v3, :cond_4

    .line 471
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 469
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 475
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 480
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 646
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 647
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 648
    const-string v1, "KEY_WDJ_LAST_SAVED_TELEPHONE"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 649
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 651
    :cond_0
    return-void
.end method

.method public static n()Z
    .locals 3

    .prologue
    .line 497
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_WDJ_EMAIL_VALIDATED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static o(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 658
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 660
    const-string v1, "KEY_WDJ_LAST_SAVED_EMAIL"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 661
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 663
    :cond_0
    return-void
.end method

.method public static o()Z
    .locals 3

    .prologue
    .line 509
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_WDJ_ACCOUNT_COMPLETED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 811
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p()Z
    .locals 3

    .prologue
    .line 521
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_WDJ_TEL_VALIDATED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static q(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter

    .prologue
    .line 143
    sget-object v0, Lchv;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Lchv;->I()V

    .line 146
    :cond_0
    sget-object v0, Lchv;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 533
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_WDJ_EMAIL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .locals 3

    .prologue
    .line 545
    invoke-static {}, Lchv;->I()V

    .line 546
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_WDJ_TELEPHONE"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s()Ljava/lang/String;
    .locals 3

    .prologue
    .line 608
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_WDJ_REGISTER_SOURCE"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static t()Ljava/lang/String;
    .locals 3

    .prologue
    .line 617
    invoke-static {}, Lchv;->I()V

    .line 618
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WDJ_UID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    invoke-static {}, Lchv;->G()Lcnn;

    move-result-object v0

    invoke-interface {v0}, Lcnn;->d()Ljava/lang/String;

    move-result-object v0

    .line 622
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    const-string v0, ""

    .line 625
    :cond_1
    return-object v0
.end method

.method public static u()Ljava/lang/String;
    .locals 3

    .prologue
    .line 654
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_WDJ_LAST_SAVED_TELEPHONE"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v()Ljava/lang/String;
    .locals 3

    .prologue
    .line 666
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_WDJ_LAST_SAVED_EMAIL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static w()Z
    .locals 3

    .prologue
    .line 680
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_WDJ_ACCOUNT_EVER_LOGOUT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static x()V
    .locals 3

    .prologue
    .line 689
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 690
    const-string v1, "KEY_WDJ_ACCOUNT_EVER_LOGOUT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 691
    invoke-static {v0}, Lchv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 692
    return-void
.end method

.method public static y()Z
    .locals 3

    .prologue
    .line 711
    invoke-static {}, Lchv;->I()V

    .line 712
    invoke-static {}, Lchv;->H()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_WDJ_NEED_UPDATE_PROFILE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static z()Z
    .locals 1

    .prologue
    .line 729
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
