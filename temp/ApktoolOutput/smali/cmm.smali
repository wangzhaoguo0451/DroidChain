.class public final Lcmm;
.super Ljava/lang/Object;
.source "WDJAccountManager.java"


# instance fields
.field public a:Lcii;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Lcmo;

.field public e:Lcom/wandoujia/account/dto/DeviceBean;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcmk;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/account/dto/DeviceBean;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "unknown"

    iput-object v0, p0, Lcmm;->b:Ljava/lang/String;

    .line 57
    new-instance v0, Lcmo;

    invoke-direct {v0, p0}, Lcmo;-><init>(Lcmm;)V

    iput-object v0, p0, Lcmm;->d:Lcmo;

    .line 81
    iput-object p1, p0, Lcmm;->b:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcmm;->c:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcmm;->e:Lcom/wandoujia/account/dto/DeviceBean;

    .line 84
    new-instance v0, Lcii;

    invoke-direct {v0}, Lcii;-><init>()V

    iput-object v0, p0, Lcmm;->a:Lcii;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcmm;->f:Ljava/util/List;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcmm;->g:Landroid/os/Handler;

    .line 88
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcmm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcmm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/wandoujia/account/dto/Platform;Landroid/content/Context;Lcmh;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcmm;->a:Lcii;

    invoke-virtual {p0, p4}, Lcmm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcmm;->e:Lcom/wandoujia/account/dto/DeviceBean;

    iput-object p3, v0, Lcii;->f:Lcmh;

    :try_start_0
    sget-object v3, Lcom/wandoujia/account/dto/Platform;->SINA:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {p1, v3}, Lcom/wandoujia/account/dto/Platform;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p2, v1, v2}, Lcii;->a(Landroid/content/Context;Ljava/lang/String;Lcom/wandoujia/account/dto/DeviceBean;)V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://account.wandoujia.com/web/oauth2/%s/login?auth=%s&source="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcii;->b(Lcom/wandoujia/account/dto/DeviceBean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/Platform;->getPlatform()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcjf;

    invoke-virtual {v0}, Lcii;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcii;->j:Lcja;

    invoke-direct {v2, p2, v1, v3, v0}, Lcjf;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcmj;)V

    invoke-virtual {v2}, Lcjf;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/account/listener/IAccountListener;)V
    .locals 3
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcmm;->a:Lcii;

    iget-object v1, v0, Lcii;->i:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcii;->i:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lcii;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcmm;->a:Lcii;

    iput-object p1, v0, Lcii;->a:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public final a(Ljava/lang/String;Lcmg;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 497
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcng;

    const-string v1, ""

    const/4 v2, 0x1

    new-array v5, v2, [Lcom/wandoujia/account/dto/FIELDS;

    const/4 v2, 0x0

    sget-object v3, Lcom/wandoujia/account/dto/FIELDS;->BASIC_SOCIAL:Lcom/wandoujia/account/dto/FIELDS;

    aput-object v3, v5, v2

    move-object v2, p2

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcng;-><init>(Ljava/lang/String;Lcmg;Ljava/lang/String;Lcmm;[Lcom/wandoujia/account/dto/FIELDS;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 499
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcnh;

    const-string v3, "register"

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcnh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 276
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcna;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcna;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 205
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcmm;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcmm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcmm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcmm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lcom/wandoujia/account/dto/Platform;Landroid/content/Context;Lcmh;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 330
    iget-object v0, p0, Lcmm;->a:Lcii;

    invoke-virtual {p0, p4}, Lcmm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcmm;->e:Lcom/wandoujia/account/dto/DeviceBean;

    iput-object p3, v0, Lcii;->f:Lcmh;

    sget-object v3, Lcom/wandoujia/account/dto/Platform;->SINA:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {p1, v3}, Lcom/wandoujia/account/dto/Platform;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p2, v1, v2}, Lcii;->a(Landroid/content/Context;Ljava/lang/String;Lcom/wandoujia/account/dto/DeviceBean;)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    sget-object v3, Lcom/wandoujia/account/dto/Platform;->WECHAT:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {p1, v3}, Lcom/wandoujia/account/dto/Platform;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v0, Lcii;->k:Lcml;

    iget-object v1, v1, Lcml;->c:Lcbo;

    invoke-virtual {v1}, Lcbo;->a()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Ld;->e:Landroid/content/Context;

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_need_install_wechat_first:I

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    new-instance v1, Lcbq;

    invoke-direct {v1}, Lcbq;-><init>()V

    const-string v2, "snsapi_userinfo"

    iput-object v2, v1, Lcbq;->b:Ljava/lang/String;

    const-string v2, "wdj_account_sdk_android"

    iput-object v2, v1, Lcbq;->c:Ljava/lang/String;

    iget-object v0, v0, Lcii;->k:Lcml;

    iget-object v0, v0, Lcml;->c:Lcbo;

    invoke-virtual {v0, v1}, Lcbo;->a(Lcbl;)Z

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://account.wandoujia.com/web/oauth2/%s/login?source="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcii;->b(Lcom/wandoujia/account/dto/DeviceBean;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/Platform;->getPlatform()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcii;->j:Lcja;

    iput-object v1, v4, Lcja;->a:Ljava/lang/String;

    iget-object v1, v0, Lcii;->j:Lcja;

    iput-object v2, v1, Lcja;->b:Lcom/wandoujia/account/dto/DeviceBean;

    new-instance v1, Lcjf;

    iget-object v0, v0, Lcii;->j:Lcja;

    invoke-direct {v1, p2, v3, v0}, Lcjf;-><init>(Landroid/content/Context;Ljava/lang/String;Lcmj;)V

    invoke-virtual {v1}, Lcjf;->show()V

    goto :goto_0
.end method

.method public final b(Lcom/wandoujia/account/listener/IAccountListener;)V
    .locals 3
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcmm;->a:Lcii;

    iget-object v1, v0, Lcii;->i:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcii;->i:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcii;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcnc;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcnc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 304
    return-void
.end method
