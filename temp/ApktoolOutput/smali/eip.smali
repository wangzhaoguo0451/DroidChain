.class final Leip;
.super Ljava/lang/Object;
.source "AppButtonSelector.java"

# interfaces
.implements Leey;


# instance fields
.field private synthetic a:Leik;


# direct methods
.method constructor <init>(Leik;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Leip;->a:Leik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 320
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a()Lcom/wandoujia/launcher_base/utils/ZipManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a()Lcom/wandoujia/launcher_base/utils/ZipManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->SUCCESS:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    if-eq v0, v1, :cond_0

    .line 323
    iget-object v0, p0, Leip;->a:Leik;

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Leik;->b(Ljava/lang/String;)V

    .line 329
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-static {p1}, Leeu;->b(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Leip;->a:Leik;

    invoke-virtual {v0, p1}, Leik;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Leip;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iget-object v1, p0, Leip;->a:Leik;

    iget-object v2, p0, Leip;->a:Leik;

    iget-object v2, v2, Leik;->c:Leiu;

    invoke-interface {v2}, Leiu;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Leik;->a(Ljava/lang/String;)Leiw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    goto :goto_0
.end method
