.class final Lehm;
.super Ljava/lang/Object;
.source "GamePacketInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/entities/app/ApkObbInfo;

.field private synthetic b:Lcom/wandoujia/entities/app/DownloadUrl;

.field private synthetic c:Lehl;


# direct methods
.method constructor <init>(Lehl;Lcom/wandoujia/entities/app/ApkObbInfo;Lcom/wandoujia/entities/app/DownloadUrl;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lehm;->c:Lehl;

    iput-object p2, p0, Lehm;->a:Lcom/wandoujia/entities/app/ApkObbInfo;

    iput-object p3, p0, Lehm;->b:Lcom/wandoujia/entities/app/DownloadUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lehm;->a:Lcom/wandoujia/entities/app/ApkObbInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lehm;->b:Lcom/wandoujia/entities/app/DownloadUrl;

    if-nez v0, :cond_1

    .line 226
    :cond_0
    invoke-static {}, Lehp;->a()V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lehm;->c:Lehl;

    iget-object v0, v0, Lehl;->a:Lehp;

    iget-object v1, p0, Lehm;->a:Lcom/wandoujia/entities/app/ApkObbInfo;

    iget-object v2, p0, Lehm;->b:Lcom/wandoujia/entities/app/DownloadUrl;

    iget-object v0, v0, Lehp;->a:Lefe;

    invoke-static {v0}, Lefe;->a(Lefe;)Leiu;

    move-result-object v0

    invoke-static {v0, v1, v2}, Leeu;->a(Leiu;Lcom/wandoujia/entities/app/ApkObbInfo;Lcom/wandoujia/entities/app/DownloadUrl;)Lcom/wandoujia/launcher_base/download/DownloadRequest;

    move-result-object v0

    invoke-static {}, Legx;->f()Leen;

    move-result-object v1

    invoke-interface {v1, v0}, Leen;->b(Lcom/wandoujia/launcher_base/download/DownloadRequest;)V

    goto :goto_0
.end method
