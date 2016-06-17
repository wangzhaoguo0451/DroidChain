.class final Leim;
.super Ljava/lang/Object;
.source "AppButtonSelector.java"

# interfaces
.implements Leeq;


# instance fields
.field private synthetic a:Leik;


# direct methods
.method constructor <init>(Leik;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Leim;->a:Leik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z
    .locals 2
    .parameter

    .prologue
    .line 183
    if-eqz p1, :cond_0

    iget-object v0, p0, Leim;->a:Leik;

    iget-object v0, v0, Leik;->c:Leiu;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Leim;->a:Leik;

    iget-object v1, v1, Leik;->c:Leiu;

    invoke-interface {v1}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Leim;->c(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Leim;->a:Leik;

    invoke-virtual {v0, p1}, Leik;->b(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    goto :goto_0
.end method

.method public final b(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 176
    invoke-direct {p0, p1}, Leim;->c(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Leim;->a:Leik;

    invoke-virtual {v0, p1}, Leik;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    goto :goto_0
.end method
