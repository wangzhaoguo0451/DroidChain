.class public final Lefb;
.super Ljava/lang/Object;
.source "PauseDownloadAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private a:Lcom/wandoujia/launcher_base/download/DownloadInfo;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lefb;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    .line 16
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    iget-object v1, p0, Lefb;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v0, v1}, Leen;->c(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    .line 21
    return-void
.end method
