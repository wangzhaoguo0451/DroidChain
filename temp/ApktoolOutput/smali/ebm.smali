.class public final Lebm;
.super Ljava/lang/Object;
.source "GameFolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lebl;


# direct methods
.method public constructor <init>(Lebl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lebm;->b:Lebl;

    iput-object p2, p0, Lebm;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 252
    iget-object v2, p0, Lebm;->b:Lebl;

    iget-object v3, p0, Lebm;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ld;->a(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lebl;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lebl;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-static {v0}, Ld;->a(Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)V

    const-string v1, "GAME"

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getAppType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v2, Lebl;->a:Ljava/lang/Byte;

    monitor-enter v1

    :try_start_0
    iget-object v4, v2, Lebl;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v2, Lebl;->c:Leba;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, v4, Leba;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v5, v4, Leba;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v4, Leba;->a:Ldzg;

    invoke-virtual {v1, v0}, Ldzg;->a(Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)V

    :cond_1
    invoke-static {}, Lebb;->a()Lebb;

    move-result-object v0

    iget-object v1, v2, Lebl;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lebb;->a(Ljava/util/List;)V

    invoke-static {}, Ledn;->b()V

    invoke-virtual {v2, v3}, Lebl;->b(Ljava/lang/String;)V

    .line 253
    :cond_2
    iget-object v0, p0, Lebm;->b:Lebl;

    invoke-virtual {v0}, Lebl;->h()V

    .line 254
    return-void

    .line 252
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method
