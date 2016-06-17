.class public Lcom/wandoujia/p4/pay/utils/ExternUtil;
.super Ljava/lang/Object;
.source "ExternUtil.java"


# static fields
.field private static final gson:Lcvo;

.field private static final pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/utils/ExternUtil;->pool:Ljava/util/concurrent/ExecutorService;

    .line 30
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/pay/utils/ExternUtil;->gson:Lcvo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/wandoujia/p4/pay/utils/ExternUtil;->gson:Lcvo;

    invoke-virtual {v0, p0, p1}, Lcvo;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getUDID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-static {p0}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWDJAuth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWDJEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lchv;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWDJNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWDJUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWDJUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lchv;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static login(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/wandoujia/account/AccountParams;

    const-string v1, "recharge"

    invoke-direct {v0, v1}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;)V

    .line 76
    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v1, v0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    .line 77
    iput-boolean v2, v0, Lcom/wandoujia/account/AccountParams;->g:Z

    .line 78
    iput-boolean v2, v0, Lcom/wandoujia/account/AccountParams;->h:Z

    .line 79
    invoke-static {}, Letz;->a()Letz;

    move-result-object v1

    iget-object v1, v1, Letz;->a:Lcmm;

    const-class v2, Lcom/wandoujia/p4/account/activity/PhoenixAccountActivity;

    invoke-static {p0, v1, v0, v2}, Ld;->a(Landroid/content/Context;Lcmm;Lcom/wandoujia/account/AccountParams;Ljava/lang/Class;)V

    .line 81
    return-void
.end method

.method public static logout(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Letz;->a(Z)V

    .line 72
    return-void
.end method

.method public static onEventRealTime(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    return-void
.end method

.method public static submit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 34
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    :goto_0
    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/pay/utils/ExternUtil;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/wandoujia/p4/pay/utils/ExternUtil$1;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/utils/ExternUtil$1;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 88
    sget-object v0, Lcom/wandoujia/p4/pay/utils/ExternUtil;->gson:Lcvo;

    invoke-virtual {v0, p0}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
