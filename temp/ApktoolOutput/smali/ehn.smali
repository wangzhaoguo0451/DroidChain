.class final Lehn;
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
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lehn;->a:Ljava/lang/String;

    .line 362
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 366
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    iget-object v1, p0, Lehn;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Leen;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    .line 367
    return-void
.end method
