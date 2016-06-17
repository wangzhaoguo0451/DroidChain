.class public final Leez;
.super Leep;
.source "GameWithPacketDownloadInfo.java"


# instance fields
.field private a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

.field private b:Lcom/wandoujia/launcher_base/download/DownloadInfo;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher_base/download/DownloadInfo;Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Leep;-><init>()V

    .line 21
    iput-object p1, p0, Leez;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    .line 22
    iput-object p2, p0, Leez;->b:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    .line 23
    iget-object v0, p0, Leez;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-virtual {p0, v0}, Leez;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    .line 24
    iget-object v0, p0, Leez;->b:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-virtual {p0, v0}, Leez;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Leez;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Leez;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v0, p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Leez;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Leez;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Leez;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Leez;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Leez;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->i()Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Leez;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Leez;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t call this function, because download group has multi different urls."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Leez;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->m()Z

    move-result v0

    return v0
.end method
