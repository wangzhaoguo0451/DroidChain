.class final Leib;
.super Ljava/lang/Object;
.source "ZipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Leia;


# direct methods
.method constructor <init>(Leia;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Leib;->a:Leia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Leib;->a:Leia;

    iget-object v1, v0, Leia;->b:Leih;

    iget-object v0, p0, Leib;->a:Leia;

    iget-object v0, v0, Leia;->c:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v0, v0, Lcom/wandoujia/launcher_base/utils/ZipManager;->d:Ljava/util/Map;

    iget-object v2, p0, Leib;->a:Leia;

    iget-object v2, v2, Leia;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a()Lcom/wandoujia/launcher_base/utils/ZipManager;

    move-result-object v2

    iget-object v3, v1, Leih;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v3}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->FAILED:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lehx;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v1, v1, Leih;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lehi;->a(Ljava/util/Set;Ljava/lang/String;)V

    .line 152
    return-void
.end method
