.class final Leho;
.super Ljava/lang/Object;
.source "GamePacketInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p1, p0, Leho;->a:Ljava/lang/String;

    .line 345
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 349
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    iget-object v1, p0, Leho;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Leen;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 353
    :cond_0
    return-void
.end method
